//! A slightly modified version of the https://github.com/get-convex/convex-mobile repository 
//! for better dart support.
use std::{
    collections::{BTreeMap, HashMap},
    future::Future,
    pin::Pin,
    sync::Arc,
};


use async_once_cell::OnceCell;
use convex_sync_types::UserIdentifier;
use flutter_rust_bridge::{
    frb,
    DartFnFuture,
};
use futures::{
    channel::oneshot::{
        self,
        Sender,
    },
    pin_mut,
    select_biased,
    FutureExt,
    StreamExt,
};
use log::debug; // Logging for debugging purposes
use parking_lot::Mutex;
use tokio::sync::mpsc;

use crate::{
    AuthTokenFetcher, ConvexClient, ConvexClientBuilder, ConvexError, FunctionResult, Value,
};

pub use crate::WebSocketState;

pub use convex_sync_types::{AuthenticationToken, UserIdentityAttributes};




mod logging;

// Custom error type for Convex client operations, exposed to Dart.
// Instead of serializing ConvexError into a string, we directly pass the
// DartConvexError to Dart.
#[derive(Debug, thiserror::Error)]
#[frb(non_opaque)]
pub enum ClientError {
    /// An internal error within the mobile Convex client.
    #[error("InternalError: {msg}")]
    InternalError { 
    /// A generic error message from the server.
        msg: String
    },
    /// An application-specific error from a remote Convex backend function.
    #[error("ConvexError: {err}")]
    ConvexError { 
        /// The ConvexError passed from the server to the client.
        err: ConvexError
    },
    /// An unexpected server-side error from a remote Convex function.
    #[error("ServerError: {msg}")]
    ServerError {
        /// A generic error message from the server.
         msg: String 
    },
}

impl From<anyhow::Error> for ClientError {
    fn from(value: anyhow::Error) -> Self {
        Self::InternalError {
            msg: value.to_string(),
        }
    }
}

/// Callback wrapper for dynamic auth token fetching from Dart.
///
/// The callback is invoked immediately (with `force_refresh=false`) and again
/// on every websocket reconnect (with `force_refresh=true`).
pub struct DartAuthTokenFetcher {
    fetcher: Arc<dyn Fn(bool) -> DartFnFuture<anyhow::Result<AuthenticationToken>> + Send + Sync>,
}

impl DartAuthTokenFetcher {
    #[frb(sync)]
    pub fn new(
        fetcher: impl Fn(bool) -> DartFnFuture<anyhow::Result<AuthenticationToken>> + Send + Sync + 'static,
    ) -> Self {
        DartAuthTokenFetcher {
            fetcher: Arc::new(fetcher),
        }
    }
}

/// Callback wrapper for WebSocket connection state changes from Dart.
#[derive(Clone)]
pub struct DartWebSocketStateSubscriber {
    on_state_change: Arc<dyn Fn(WebSocketState) -> DartFnFuture<anyhow::Result<()>> + Send + Sync>,
}

impl DartWebSocketStateSubscriber {
    #[frb(sync)]
    pub fn new(
        on_state_change: impl Fn(WebSocketState) -> DartFnFuture<anyhow::Result<()>>
            + Send
            + Sync
            + 'static,
    ) -> Self {
        DartWebSocketStateSubscriber {
            on_state_change: Arc::new(on_state_change),
        }
    }
}

/// Trait defining the interface for handling subscription updates.
pub trait QuerySubscriber: Send + Sync {
    // Due to restrictions on flutter_rust_bridge, we have made this function async
    // We've also unified on_error and on_update into a single callback
    /// Called when a new update is received
    async fn on_update(&self, value: FunctionResult);
}

/// Adapter for Dart functions as subscribers, handling async callbacks.
pub struct DartQuerySubscriber {
    on_update: Box<dyn Fn(FunctionResult) -> DartFnFuture<anyhow::Result<()>> + Send + Sync>,
}

impl DartQuerySubscriber {
    #[frb(sync)]
    pub fn new(
        on_update: Box<dyn Fn(FunctionResult) -> DartFnFuture<anyhow::Result<()>> + Send + Sync>,
    ) -> Self {
        DartQuerySubscriber { on_update }
    }
}


impl QuerySubscriber for DartQuerySubscriber {
    #[frb]
    async fn on_update(&self, value: FunctionResult) {
        let _ = (self.on_update)(value).await;
    }
}

pub struct SubscriptionHandle {
    // flutter_rust_bridge does not work well with Arc<...> types, so we've
    // moved the Arc<...> inside the struct instead. We can then return
    // an instance of SubscriptionHandle instead of an Arc<SubscriptionHandle>.
    cancel_sender: Arc<Mutex<Option<Sender<()>>>>,
}

impl SubscriptionHandle {
    fn new(cancel_sender: Sender<()>) -> Self {
        SubscriptionHandle {
            cancel_sender: Arc::new(Mutex::new(Some(cancel_sender))),
        }
    }

    /// Cancels the subscription by sending a cancellation signal.
    #[frb(sync)]
    pub fn cancel(&self) {
        if let Some(sender) = self.cancel_sender.lock().take() {
            let _ = sender.send(());
        }
    }
}

/// A wrapper around a [ConvexClient] and a [tokio::runtime::Runtime] used to
/// asynchronously call Convex functions.
///
/// That enables easy async communication for mobile clients. They can call the
/// various methods on [MobileConvexClient] and await results without blocking
/// their main threads.
pub struct MobileConvexClient {
    deployment_url: String,
    client_id: String,
    web_socket_state_subscriber: Option<Arc<DartWebSocketStateSubscriber>>,
    client: OnceCell<ConvexClient>,
    rt: tokio::runtime::Runtime,
}

impl MobileConvexClient {
    /// Creates a new [MobileConvexClient].
    ///
    /// The internal [ConvexClient] doesn't get created/connected until the
    /// first public method call that hits the Convex backend.
    ///
    /// The `client_id` should be a string representing the name and version of
    /// the foreign client.
    ///
    /// Optionally pass a [DartWebSocketStateSubscriber] to receive connection
    /// state updates (`Connecting` / `Connected`).
    #[frb(sync)]
    pub fn new(
        deployment_url: String,
        client_id: String,
        web_socket_state_subscriber: Option<DartWebSocketStateSubscriber>,
    ) -> MobileConvexClient {
        let rt = tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .unwrap();
        MobileConvexClient {
            deployment_url,
            client_id,
            web_socket_state_subscriber: web_socket_state_subscriber.map(Arc::new),
            client: OnceCell::new(),
            rt,
        }
    }

    /// Returns a connected [ConvexClient].
    ///
    /// The first call is guaranteed to create the client object and subsequent
    /// calls will return clones of that connected client.
    ///
    /// Returns an error if ...
    /// TODO figure out reasons.
    async fn connected_client(&self) -> anyhow::Result<ConvexClient> {
        let url = self.deployment_url.clone();
        self.client
            .get_or_try_init(async {
                let client_id = self.client_id.to_owned();
                let (tx, mut rx) = mpsc::channel(1);
                let possible_subscriber = self.web_socket_state_subscriber.clone();
                if let Some(subscriber) = possible_subscriber.clone() {
                    self.rt.spawn(async move {
                        while let Some(state) = rx.recv().await {
                            let _ = (subscriber.on_state_change)(state).await;
                        }
                    });
                }

                let has_subscriber = possible_subscriber.is_some();
                self.rt
                    .spawn(async move {
                        let mut builder =
                            ConvexClientBuilder::new(url.as_str()).with_client_id(&client_id);
                        if has_subscriber {
                            builder = builder.with_on_state_change(tx);
                        }
                        builder.build().await
                    })
                    .await?
            })
            .await
            .map(|client_ref| client_ref.clone())
    }

    /// Executes a query on the Convex backend.
    #[frb]
    pub async fn query(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<Value, ClientError> {
        let mut client = self.connected_client().await?;
        debug!("got the client");
        let result = client.query(name.as_str(), args).await?;
        debug!("got the result");
        handle_direct_function_result(result)
    }

    /// Subscribe to updates to a query against the Convex backend.
    ///
    /// The [QuerySubscriber] will be called back with initial query results and
    /// it will continue to get called as the underlying data changes.
    ///
    /// The returned [SubscriptionHandle] can be used to cancel the
    /// subscription.
    #[frb]
    pub async fn subscribe(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
        on_update: impl Fn(FunctionResult) -> DartFnFuture<anyhow::Result<()>>
            + Send
            + Sync
            + 'static,
    ) -> Result<SubscriptionHandle, ClientError> {
        let subscriber = Arc::new(DartQuerySubscriber::new(Box::new(on_update)));
        self.internal_subscribe(name, args, subscriber)
            .await
            .map_err(Into::into)
    }

    async fn internal_subscribe(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
        subscriber: Arc<DartQuerySubscriber>,
    ) -> anyhow::Result<SubscriptionHandle> {
        let mut client = self.connected_client().await?;
        debug!("New subscription");
        let mut subscription = client.subscribe(name.as_str(), args).await?;
        let (cancel_sender, cancel_receiver) = oneshot::channel::<()>();
        self.rt.spawn(async move {
            let cancel_fut = cancel_receiver.fuse();
            pin_mut!(cancel_fut);
            loop {
                select_biased! {
                    new_val = subscription.next().fuse() => {
                        match new_val {
                            Some(result) => {
                                subscriber.on_update(result).await;
                            }
                            None => {
                                debug!("Client dropped prematurely");
                                break;
                            }
                        }
                    }
                    _ = cancel_fut => {
                        break;
                    }
                }
            }
            debug!("Subscription canceled");
        });
        Ok(SubscriptionHandle::new(cancel_sender))
    }

    /// Executes a mutation on the Convex backend.
    #[frb]
    pub async fn mutation(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<Value, ClientError> {
        let result = self.internal_mutation(name, args).await?;
        handle_direct_function_result(result)
    }

    /// Internal method for mutation logic.
    async fn internal_mutation(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.mutation(&name, args).await })
            .await?
    }

    /// Executes an action on the Convex backend.
    #[frb]
    pub async fn action(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> Result<Value, ClientError> {
        debug!("Running action: {}", name);
        let result = self.internal_action(name, args).await?;
        debug!("Got action result: {:?}", result);
        handle_direct_function_result(result)
    }

    async fn internal_action(
        &self,
        name: String,
        args: BTreeMap<String, Value>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        debug!("Running action: {}", name);
        self.rt
            .spawn(async move { client.action(&name, args).await })
            .await?
    }

    /// Provide an OpenID Connect ID token to be associated with this client.
    ///
    /// Doing so will share that information with the Convex backend and a valid
    /// token will give the backend knowledge of a logged in user.
    ///
    /// Passing [None] for the token will disassociate a previous token,
    /// effectively returning to a logged out state.
    #[frb]
    pub async fn set_auth(&self, token: Option<String>) -> Result<(), ClientError> {
        Ok(self.internal_set_auth(token).await?)
    }

    /// Internal method for setting authentication.
    async fn internal_set_auth(&self, token: Option<String>) -> anyhow::Result<()> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.set_auth(token).await })
            .await
            .map_err(|e| e.into())
    }

    /// Set an auth token fetcher callback for use when calling Convex
    /// functions.
    ///
    /// The callback is invoked immediately (with `force_refresh=false`) and
    /// again on every websocket reconnect (with `force_refresh=true`),
    /// allowing dynamic token refresh.
    ///
    /// Pass `None` to clear the callback and log out.
    #[frb]
    pub async fn set_auth_callback(
        &self,
        fetcher: Option<DartAuthTokenFetcher>,
    ) -> Result<(), ClientError> {
        let fetcher = fetcher.map(|dart_fetcher| {
            let fetcher = dart_fetcher.fetcher;
            Box::new(move |force_refresh: bool| {
                let fetcher = fetcher.clone();
                Box::pin(async move { (fetcher)(force_refresh).await })
                    as Pin<Box<dyn Future<Output = anyhow::Result<AuthenticationToken>> + Send>>
            }) as AuthTokenFetcher
        });
        Ok(self.internal_set_auth_callback(fetcher).await?)
    }

    async fn internal_set_auth_callback(
        &self,
        fetcher: Option<AuthTokenFetcher>,
    ) -> anyhow::Result<()> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.set_auth_callback(fetcher).await })
            .await
            .map_err(|e| e.into())
    }
}

/// Utility function to handle and serialize FunctionResult into a string or
/// error.
fn handle_direct_function_result(result: FunctionResult) -> Result<Value, ClientError> {
    match result {
        FunctionResult::Value(v) => Ok(v.into()),
        FunctionResult::ConvexError(e) => Err(ClientError::ConvexError { err: e.into() }),
        FunctionResult::ErrorMessage(msg) => Err(ClientError::ServerError { msg }),
    }
}


/// Initializes logging for [MobileConvexClient] and its dependencies.
///
/// Call this once early in your application's lifecycle.
#[frb(sync)]
pub fn init_convex_logging() {
    use std::sync::Once;

    static INIT: Once = Once::new();

    INIT.call_once(|| {
        logging::init_logging();
        tracing::info!("convex_dart logging initialized");
    });
}

// flutter_rust_bridge does not support BTreeMap, so we use these functions to convert the types.
#[frb(sync)]
pub fn hashmap_to_btreemap(hashmap: HashMap<String, Value>) -> BTreeMap<String, Value> {
    hashmap.into_iter().map(|(k, v)| (k, v)).collect()
}

#[frb(sync)]
pub fn btreemap_to_hashmap(btreemap: BTreeMap<String, Value>) -> HashMap<String, Value> {
    btreemap.into_iter().map(|(k, v)| (k, v)).collect()
}

// FRB mirrors for types defined in `convex_sync_types`. The real types already
// carry `#[frb(non_opaque)]`, but FRB only scans `crate::dart` and `crate::value`,
// so we mirror them here to generate concrete Dart types instead of opaque handles.
#[frb(non_opaque, mirror(UserIdentifier))]
pub struct _UserIdentifier(pub String);

#[frb(non_opaque, mirror(UserIdentityAttributes))]
pub struct _UserIdentityAttributes {
    pub token_identifier: UserIdentifier,
    pub issuer: Option<String>,
    pub subject: Option<String>,
    pub name: Option<String>,
    pub given_name: Option<String>,
    pub family_name: Option<String>,
    pub nickname: Option<String>,
    pub preferred_username: Option<String>,
    pub profile_url: Option<String>,
    pub picture_url: Option<String>,
    pub website_url: Option<String>,
    pub email: Option<String>,
    pub email_verified: Option<bool>,
    pub gender: Option<String>,
    pub birthday: Option<String>,
    pub timezone: Option<String>,
    pub language: Option<String>,
    pub phone_number: Option<String>,
    pub phone_number_verified: Option<bool>,
    pub address: Option<String>,
    /// Stored as RFC3339 string
    pub updated_at: Option<String>,
    pub custom_claims: BTreeMap<String, String>,
}

#[frb(non_opaque, mirror(AuthenticationToken))]
pub enum _AuthenticationToken {
    /// Admin key issued by a KeyBroker, potentially acting as a user.
    Admin(String, Option<UserIdentityAttributes>),
    /// OpenID Connect JWT
    User(String),
    /// Logged out.
    None,
}