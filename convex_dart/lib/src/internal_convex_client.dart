import 'dart:async';

import 'package:convex_dart/src/convex_dart_for_generated_code.dart';
import 'package:convex_dart/src/rust/base_client/query_result.dart';
import 'package:convex_dart/src/rust/dart.dart';
import 'package:convex_dart/src/rust/frb_generated.dart';
import 'package:convex_dart/src/rust/sync.dart';
import 'package:convex_dart/src/rust/value.dart';
import 'package:locked_async/locked_async.dart';

/// A client for interacting with a Convex backend service.
///
/// The ConvexClient provides methods for executing queries, mutations, actions and
/// managing real-time subscriptions with a Convex backend.
///
/// A client class for interacting with Convex backend services.
/// Implements singleton pattern to ensure only one instance exists.
class InternalConvexClient {
  /// Private static instance for singleton pattern.
  static InternalConvexClient? _instance;

  /// The underlying mobile client that handles communication with Convex.
  late final MobileConvexClient _client;

  /// Public getter to access singleton instance.
  /// Throws if accessed before initialization.
  static InternalConvexClient get instance => _instance!;

  /// Sets the singleton instance of [InternalConvexClient].
  ///
  /// This allows manual assignment of the [InternalConvexClient] instance,
  /// which can be useful for testing or advanced use cases.
  static set instance(InternalConvexClient value) => _instance = value;

  /// Initializes the ConvexClient singleton instance.
  ///
  /// [deploymentUrl] is the URL of your Convex deployment.
  ///
  /// [logging] turns on diagnostic output from the native Rust client—WebSocket
  /// reconnects, subscriptions, auth, and other SDK internals. This is not the
  /// same as function logs in the Convex dashboard; those stay on the server.
  /// When enabled, messages go to the platform log: Logcat on Android (tag
  /// `ConvexMobile`), Xcode Console / os_log on iOS, and stderr on desktop.
  /// [initConvexLogging] has the same effect and runs at most once.
  ///
  /// [onStateChange] is a callback that will be called when the WebSocket state changes.
  ///
  /// Returns the singleton instance. If already initialized, returns the
  /// existing instance; later calls do not change [deploymentUrl].
  static Future<InternalConvexClient> init({
    required String deploymentUrl,
    required bool logging,
    FutureOr<void> Function(WebSocketState)? onStateChange,
  }) async {
    if (_instance == null) {
      // Initialize Rust FFI library
      await RustLib.init();

      final webSocketStateSubscriber = onStateChange != null
          ? DartWebSocketStateSubscriber(onStateChange: onStateChange)
          : null;

      // Create new mobile client instance
      final client = MobileConvexClient(
        deploymentUrl: deploymentUrl,
        clientId: "convex-dart",
        webSocketStateSubscriber: webSocketStateSubscriber,
      );

      // Create singleton instance
      _instance = InternalConvexClient._internal(client);
    }
    if (logging) {
      initConvexLogging();
    }
    return _instance!;
  }

  /// Private constructor to prevent direct instantiation.
  /// Takes the mobile client instance.
  InternalConvexClient._internal(this._client);

  /// Executes a Convex query operation.
  ///
  /// [name] - Name of the query function to execute.
  /// [args] - Map of arguments to pass to the query.
  ///
  /// Returns the query result as a [DartValue].
  ///
  /// Throws:
  /// - [ConvexError] if a TypeScript ConvexError is thrown on the backend.
  /// - [ConvexClientError] for other errors (network, internal, server errors).
  Future<Value> query({
    required String name,
    required BTreeMapStringValue args,
  }) async {
    return _handleConvexCallback(() => _client.query(name: name, args: args));
  }

  /// Creates a real-time subscription to a Convex query.
  ///
  /// [name] - Name of the query function to subscribe to.
  /// [args] - Map of arguments for the subscription.
  /// [onUpdate] - Callback function called when new data arrives.
  ///
  /// Returns a handle that can be used to manage the subscription.
  ///
  /// Throws:
  /// - [ConvexClientError] for subscription setup errors (network, internal, server errors).
  ///
  /// Note: The [onUpdate] callback may receive [ConvexError] or [ConvexClientError]
  /// through the stream if errors occur during the subscription.
  Future<SubscriptionHandle> subscribe({
    required String name,
    required BTreeMapStringValue args,
    required void Function(FunctionResult) onUpdate,
  }) async {
    return await _client.subscribe(
      name: name,
      args: args,
      onUpdate: (value) => onUpdate(value),
    );
  }

  /// Creates a real-time stream for a Convex query.
  ///
  /// [name] - Name of the query function to stream.
  /// [args] - Map of arguments for the query.
  /// [decodeResult] - Function to decode the raw result into the desired type.
  ///
  /// Returns a stream that emits query results and errors.
  ///
  /// The stream may emit:
  /// - Query results of type [Output] when data is received.
  /// - [ConvexError] if a TypeScript ConvexError is thrown on the backend.
  /// - [ConvexClientError] for other errors (network, internal, server errors).
  ///
  /// Example:
  /// ```dart
  /// final stream = client.stream<String>(
  ///   name: 'getUserName',
  ///   args: {'id': 'user123'},
  ///   decodeResult: (value) => value as String,
  /// );
  ///
  /// stream.listen(
  ///   (data) => print('Received: $data'),
  ///   onError: (error) {
  ///     if (error is ConvexError) {
  ///       print('Application error: ${error.message}');
  ///     } else if (error is ConvexClientError) {
  ///       print('Client error: ${error.message}');
  ///     }
  ///   },
  /// );
  /// ```
  // ignore: avoid_types_as_parameter_names
  Stream<Output> stream<Output>({
    required String name,
    required BTreeMapStringValue args,
    required Output Function(Value) decodeResult,
  }) {
    final lock = LockedAsync();

    late StreamController<Output> controller;
    SubscriptionHandle? subscriptionHandle;

    void startSubscription() {
      lock.run((state) async {
        state.guard();
        try {
          final newHandle = await _client.subscribe(
            name: name,
            args: args,
            onUpdate: (value) {
              state.guard();

              if (controller.isClosed) {
                return;
              }
              switch (value) {
                case FunctionResult_Value result:
                  controller.add(decodeResult(result.field0));
                case FunctionResult_ErrorMessage result:
                  controller.addError(ConvexClientError._(result.field0));
                case FunctionResult_ConvexError result:
                  controller.addError(
                    ConvexError._(
                      result.field0.message,
                      decodeValue(result.field0.data),
                    ),
                  );
              }
            },
          );
          state.guard();
          subscriptionHandle = newHandle;
        } catch (e, s) {
          state.guard();
          controller.addError(e, s);
        }
      });
    }

    void stopSubscription() {
      lock.run((state) async {
        state.guard();
        subscriptionHandle?.cancel();
        subscriptionHandle = null;
      });
    }

    controller = StreamController<Output>(
      onListen: startSubscription,
      onCancel: stopSubscription,
    );
    return controller.stream;
  }

  /// Executes a Convex mutation operation.
  ///
  /// [name] - Name of the mutation function to execute.
  /// [args] - Map of arguments to pass to the mutation.
  ///
  /// Returns the mutation result as a [Value].
  ///
  /// Throws:
  /// - [ConvexError] if a TypeScript ConvexError is thrown on the backend.
  /// - [ConvexClientError] for other errors (network, internal, server errors).
  Future<Value> mutation({
    required String name,
    required BTreeMapStringValue args,
  }) async {
    return _handleConvexCallback(
      () => _client.mutation(name: name, args: args),
    );
  }

  /// Executes a Convex action operation.
  ///
  /// [name] - Name of the action function to execute.
  /// [args] - Map of arguments to pass to the action.
  ///
  /// Returns the action result as a [Value].
  ///
  /// Throws:
  /// - [ConvexError] if a TypeScript ConvexError is thrown on the backend.
  /// - [ConvexClientError] for other errors (network, internal, server errors).
  Future<Value> action({
    required String name,
    required BTreeMapStringValue args,
  }) async {
    return _handleConvexCallback(() => _client.action(name: name, args: args));
  }

  /// Set auth for use when calling Convex functions.
  ///
  /// Set it with a token that you get from your auth provider via their login
  /// flow. If `None` is passed as the token, then auth is unset (logging
  /// out).
  ///
  /// Internally this wraps the static token in a trivial callback and the
  /// same token is re-sent on websocket reconnect.
  ///
  /// Prefer [setAuthCallback] - it will allow fetching a
  /// fresh token after a websocket reconnect. That's important because
  /// the original token might have expired while the socket was
  /// disconnected.
  Future<void> setAuth({required String? token}) async {
    return await _client.setAuth(token: token);
  }

  /// Set an auth token fetcher callback for use when calling Convex
  /// functions.
  ///
  /// The callback is invoked immediately (with `force_refresh=false`) and
  /// again on every websocket reconnect (with `force_refresh=true`),
  /// allowing dynamic token refresh.
  ///
  /// Pass [null] to clear the callback and log out.
  Future<void> setAuthCallback({
    FutureOr<String> Function(bool)? fetcher,
  }) async {
    if (fetcher == null) {
      return await _client.setAuthCallback(fetcher: null);
    } else {
      return await _client.setAuthCallback(
        fetcher: DartAuthTokenFetcher(
          fetcher: (n) async {
            final result = await fetcher(n);
            return AuthenticationToken.user(result);
          },
        ),
      );
    }
  }
}

/// The rust methods may throw one of these exceptions, we will convert into
/// the appropriate Dart exceptions.
Future<T> _handleConvexCallback<T>(Future<T> Function() callback) async {
  try {
    return await callback();
  } on ClientError_InternalError catch (e) {
    throw ConvexClientError._(e.msg);
  } on ClientError_ConvexError catch (e) {
    throw ConvexError._(e.err.message, decodeValue(e.err.data));
  } on ClientError_ServerError catch (e) {
    throw ConvexClientError._(e.msg);
  }
}

/// An exception thrown when a TypeScript ConvexError is thrown on the backend.
///
/// This exception contains all the data that was thrown from the Convex backend,
/// including both the error message and any custom data payload that was
/// included with the error.
///
/// Example:
/// ```dart
/// try {
///   await client.mutation(name: 'createUser', args: {'name': 'John'});
/// } on ConvexError catch (e) {
///   print('Convex error: ${e.message}');
///   print('Error data: ${e.data}');
/// }
/// ```
///
/// See also:
/// - [ConvexClientError] for other types of errors
/// - [Convex documentation on error handling](https://docs.convex.dev/functions/error-handling/application-errors)
class ConvexError extends ConvexClientError {
  /// Custom data payload that was included with the error.
  /// This can be any JSON-serializable value that was passed
  /// when the error was thrown on the backend.
  final dynamic data;

  /// Creates a new ConvexError with the given message and data.
  ConvexError._(super.message, this.data) : super._();

  @override
  String toString() {
    return 'ConvexError(message: $message, data: $data)';
  }
}

/// An exception thrown for any error that is not a TypeScript ConvexError.
///
/// This exception is used for various types of client-side and system errors,
/// including:
/// - Internal errors within the Convex client
/// - Network connectivity issues
/// - Server-side errors that are not application-specific ConvexErrors
/// - Authentication failures
/// - Invalid request parameters
///
/// Example:
/// ```dart
/// try {
///   await client.query(name: 'getUser', args: {'id': 'user123'});
/// } on ConvexClientError catch (e) {
///   print('Client error: ${e.message}');
///   // Handle network issues, auth failures, etc.
/// } on ConvexError catch (e) {
///   print('Application error: ${e.message}');
///   // Handle application-specific errors
/// }
/// ```
///
/// See also:
/// - [ConvexError] for TypeScript ConvexErrors from the backend
/// - [Convex documentation on error handling](https://docs.convex.dev/functions/error-handling/application-errors)
class ConvexClientError implements Exception {
  /// The error message describing what went wrong.
  final String message;

  /// Creates a new ConvexClientError with the given message.
  ConvexClientError._(this.message);

  @override
  String toString() {
    return 'ConvexClientError(message: $message)';
  }
}
