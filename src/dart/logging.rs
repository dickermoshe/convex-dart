//! A slightly modified version of the https://github.com/get-convex/convex-mobile repository
//! for better dart support.

/// Initialize platform-specific logging
/// Should be called once
pub fn init_logging() {
    #[cfg(target_os = "android")]
    init_android_logging();

    #[cfg(target_os = "ios")]
    init_ios_logging();

    #[cfg(not(any(target_os = "android", target_os = "ios")))]
    init_default_logging();
}

#[cfg(target_os = "android")]
fn init_android_logging() {
    use tracing_subscriber::{
        layer::SubscriberExt,
        Registry,
    };

    // Initialize Android logger
    android_logger::init_once(
        android_logger::Config::default()
            .with_max_level(log::LevelFilter::Trace)
            .with_tag("ConvexMobile"),
    );

    // Create a tracing subscriber that forwards to Android logcat
    let android_layer =
        tracing_android::layer("ConvexMobile").expect("Failed to create Android tracing layer");

    let subscriber = Registry::default().with(android_layer);

    tracing::subscriber::set_global_default(subscriber).expect("Failed to set tracing subscriber");
}

#[cfg(target_os = "ios")]
fn init_ios_logging() {
    use tracing_subscriber::{
        layer::SubscriberExt,
        Registry,
    };

    // Create a tracing subscriber that forwards to iOS os_log
    let oslog_layer = tracing_oslog::OsLogger::new("dev.convex.ConvexMobile", "default");

    let subscriber = Registry::default().with(oslog_layer);

    tracing::subscriber::set_global_default(subscriber).expect("Failed to set tracing subscriber");
}

#[cfg(not(any(target_os = "android", target_os = "ios")))]
fn init_default_logging() {
    use tracing::Level;
    use tracing_subscriber::fmt;

    // For development/testing on desktop
    fmt().with_max_level(Level::TRACE).init();
}
