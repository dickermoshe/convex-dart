import 'dart:async';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'convex_value.dart';
import 'encode.dart';
import 'internal_convex_client_shared.dart';
import 'web_socket_state.dart';

@JS('convex.ConvexClient')
extension type _JsConvexClient._(JSObject _) implements JSObject {
  external factory _JsConvexClient(String address);

  external JSPromise<JSAny?> query(JSAny functionRef, JSAny? args);
  external JSPromise<JSAny?> mutation(JSAny functionRef, JSAny? args);
  external JSPromise<JSAny?> action(JSAny functionRef, JSAny? args);
  external _JsUnsubscribe onUpdate(
    JSAny functionRef,
    JSAny? args,
    JSFunction callback,
    JSFunction onError,
  );
  external void setAuth(JSFunction fetchToken, [JSFunction? onChange]);
  external JSAny? connectionState();
  external JSFunction subscribeToConnectionState(JSFunction callback);
}

extension type _JsUnsubscribe(JSObject _) implements JSObject {
  external void unsubscribe();
}

class InternalConvexClient {
  static InternalConvexClient? _instance;

  final _JsConvexClient _client;
  JSFunction? _connectionStateUnsubscribe;

  static InternalConvexClient get instance => _instance!;

  static set instance(InternalConvexClient value) => _instance = value;

  static Future<InternalConvexClient> init({
    required String deploymentUrl,
    required bool logging,
    FutureOr<void> Function(WebSocketState)? onStateChange,
  }) async {
    if (_instance == null) {
      _assertConvexBundleLoaded();
      _instance = InternalConvexClient._internal(
        _JsConvexClient(deploymentUrl),
      );
    }

    if (logging) {
      // The browser bundle owns its own logging behavior. Keep the option for
      // public API compatibility with native targets.
    }

    if (onStateChange != null) {
      _instance!._setConnectionStateSubscriber(onStateChange);
    }

    return _instance!;
  }

  InternalConvexClient._internal(this._client);

  Future<ConvexValue> query({
    required String name,
    required ConvexArgs args,
  }) async {
    return _handleJsCallback(
      () => _client.query(name.toJS, _toJsArgs(args)).toDart,
    );
  }

  Future<InternalSubscriptionHandle> subscribe({
    required String name,
    required ConvexArgs args,
    required void Function(InternalFunctionResult) onUpdate,
  }) async {
    final unsubscribe = _client.onUpdate(
      name.toJS,
      _toJsArgs(args),
      ((JSAny? value, JSAny? _) {
        onUpdate(InternalFunctionResultValue(_fromJsValue(value)));
      }).toJS,
      ((JSAny? error, JSAny? _) {
        onUpdate(_functionResultFromJsError(error));
      }).toJS,
    );
    return _WebSubscriptionHandle(unsubscribe);
  }

  Stream<T> stream<T>({
    required String name,
    required ConvexArgs args,
    required T Function(ConvexValue) decodeResult,
  }) {
    late StreamController<T> controller;
    InternalSubscriptionHandle? subscriptionHandle;

    void startSubscription() {
      subscribe(
        name: name,
        args: args,
        onUpdate: (value) {
          if (controller.isClosed) {
            return;
          }
          switch (value) {
            case InternalFunctionResultValue(:final value):
              controller.add(decodeResult(value));
            case InternalFunctionResultErrorMessage(:final message):
              controller.addError(ConvexClientError.internal(message));
            case InternalFunctionResultConvexError(:final message, :final data):
              controller.addError(
                ConvexError.internal(message, decodeValue(data)),
              );
          }
        },
      ).then((handle) {
        if (controller.isClosed) {
          handle.cancel();
        } else {
          subscriptionHandle = handle;
        }
      }, onError: controller.addError);
    }

    void stopSubscription() {
      subscriptionHandle?.cancel();
      subscriptionHandle = null;
    }

    controller = StreamController<T>(
      onListen: startSubscription,
      onCancel: stopSubscription,
    );
    return controller.stream;
  }

  Future<ConvexValue> mutation({
    required String name,
    required ConvexArgs args,
  }) async {
    return _handleJsCallback(
      () => _client.mutation(name.toJS, _toJsArgs(args)).toDart,
    );
  }

  Future<ConvexValue> action({
    required String name,
    required ConvexArgs args,
  }) async {
    return _handleJsCallback(
      () => _client.action(name.toJS, _toJsArgs(args)).toDart,
    );
  }

  Future<void> setAuth({required String? token}) async {
    if (token == null) {
      return setAuthCallback(fetcher: null);
    }
    return setAuthCallback(fetcher: (_) => token);
  }

  Future<void> setAuthCallback({
    FutureOr<String> Function(bool)? fetcher,
  }) async {
    if (fetcher == null) {
      _client.setAuth((() => Future<JSString?>.value(null).toJS).toJS);
      return;
    }

    _client.setAuth(
      ((JSAny? forceRefresh) {
        final refresh = forceRefresh.dartify() == true;
        return Future(() async => (await fetcher(refresh)).toJS).toJS;
      }).toJS,
    );
  }

  void _setConnectionStateSubscriber(
    FutureOr<void> Function(WebSocketState) onStateChange,
  ) {
    _connectionStateUnsubscribe?.callAsFunction();
    _connectionStateUnsubscribe = _client.subscribeToConnectionState(
      ((JSAny? state) {
        onStateChange(_fromJsConnectionState(state));
      }).toJS,
    );
    onStateChange(_fromJsConnectionState(_client.connectionState()));
  }
}

class _WebSubscriptionHandle implements InternalSubscriptionHandle {
  final _JsUnsubscribe _unsubscribe;

  _WebSubscriptionHandle(this._unsubscribe);

  @override
  void cancel() {
    _unsubscribe.unsubscribe();
  }
}

Future<ConvexValue> _handleJsCallback(
  Future<JSAny?> Function() callback,
) async {
  try {
    return _fromJsValue(await callback());
  } catch (e) {
    throw _errorFromJs(e);
  }
}

void _assertConvexBundleLoaded() {
  final convex = globalContext['convex'];
  final client = convex != null && convex.isA<JSObject>()
      ? (convex as JSObject)['ConvexClient']
      : null;
  if (convex == null || client == null) {
    throw ConvexClientError.internal(
      'Convex browser bundle not found. Add '
      '<script src="https://unpkg.com/convex@1.41.0/dist/browser.bundle.js"></script> '
      'before flutter_bootstrap.js.',
    );
  }
}

JSObject _toJsArgs(ConvexArgs args) {
  final object = JSObject();
  for (final entry in args.entries) {
    object.setProperty(entry.key.toJS, _toJsValue(entry.value));
  }
  return object;
}

JSAny? _toJsValue(ConvexValue value) {
  return switch (value) {
    ConvexValueNull() => null,
    ConvexValueInt64(:final value) => globalContext.callMethod(
      'BigInt'.toJS,
      value.toString().toJS,
    ),
    ConvexValueFloat64(:final value) => value.toJS,
    ConvexValueBoolean(:final value) => value.toJS,
    ConvexValueString(:final value) => value.toJS,
    ConvexValueBytes(:final value) => value.toJS.getProperty<JSArrayBuffer>(
      'buffer'.toJS,
    ),
    ConvexValueArray(:final value) => _toJsArray(value.unlockView),
    ConvexValueObject(:final value) => _toJsObject(value.unlockView),
  };
}

JSArray<JSAny?> _toJsArray(Iterable<ConvexValue> values) {
  final array = JSArray<JSAny?>();
  for (final value in values) {
    array[array.length] = _toJsValue(value);
  }
  return array;
}

JSObject _toJsObject(Map<String, ConvexValue> values) {
  final object = JSObject();
  for (final entry in values.entries) {
    object.setProperty(entry.key.toJS, _toJsValue(entry.value));
  }
  return object;
}

ConvexValue _fromJsValue(JSAny? value) {
  return encodeValue(value.dartify());
}

InternalFunctionResult _functionResultFromJsError(JSAny? error) {
  final exception = _errorFromJs(error);
  if (exception is ConvexError) {
    return InternalFunctionResultConvexError(
      exception.message,
      encodeValue(exception.data),
    );
  }
  return InternalFunctionResultErrorMessage(exception.message);
}

ConvexClientError _errorFromJs(Object? error) {
  // Promise rejections from JS retain their JS interop identity on dart2js.
  // ignore: invalid_runtime_check_with_js_interop_types
  if (error is JSAny?) {
    final message = _jsErrorMessage(error);
    final data = error != null && error.isA<JSObject>()
        ? (error as JSObject)['data']
        : null;
    if (data != null) {
      return ConvexError.internal(message, decodeValue(_fromJsValue(data)));
    }
    return ConvexClientError.internal(message);
  }
  return ConvexClientError.internal(error.toString());
}

String _jsErrorMessage(JSAny? error) {
  if (error == null) {
    return 'Unknown JavaScript error';
  }
  if (error.isA<JSObject>()) {
    final message = (error as JSObject)['message'];
    if (message != null) {
      final dartMessage = message.dartify();
      if (dartMessage is String && dartMessage.isNotEmpty) {
        return dartMessage;
      }
    }
  }
  return error.dartify()?.toString() ?? error.toString();
}

WebSocketState _fromJsConnectionState(JSAny? state) {
  final dartState = state.dartify();
  if (dartState is Map) {
    final hasInflightRequests = dartState['hasInflightRequests'];
    final isWebSocketConnected = dartState['isWebSocketConnected'];
    if (isWebSocketConnected == true && hasInflightRequests != true) {
      return WebSocketState.connected;
    }
  }
  final stateText = dartState?.toString().toLowerCase() ?? '';
  if (stateText.contains('connected')) {
    return WebSocketState.connected;
  }
  return WebSocketState.connecting;
}
