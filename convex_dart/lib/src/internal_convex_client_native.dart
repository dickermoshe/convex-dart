import 'dart:async';

import 'package:convex_dart/src/rust/base_client/query_result.dart' as rust;
import 'package:convex_dart/src/rust/dart.dart' as rust;
import 'package:convex_dart/src/rust/frb_generated.dart';
import 'package:convex_dart/src/rust/lib.dart' as rust;
import 'package:convex_dart/src/rust/sync.dart' as rust;
import 'package:convex_dart/src/rust/value.dart' as rust;
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:locked_async/locked_async.dart';

import 'convex_value.dart';
import 'encode.dart';
import 'internal_convex_client_shared.dart';
import 'web_socket_state.dart';

class InternalConvexClient {
  static InternalConvexClient? _instance;

  late final rust.MobileConvexClient _client;

  static InternalConvexClient get instance => _instance!;

  static set instance(InternalConvexClient value) => _instance = value;

  static Future<InternalConvexClient> init({
    required String deploymentUrl,
    required bool logging,
    FutureOr<void> Function(WebSocketState)? onStateChange,
  }) async {
    if (_instance == null) {
      await RustLib.init();

      final webSocketStateSubscriber = onStateChange != null
          ? rust.DartWebSocketStateSubscriber(
              onStateChange: (state) => onStateChange(_fromRustState(state)),
            )
          : null;

      final client = rust.MobileConvexClient(
        deploymentUrl: deploymentUrl,
        clientId: "convex-dart",
        webSocketStateSubscriber: webSocketStateSubscriber,
      );

      _instance = InternalConvexClient._internal(client);
    }
    if (logging) {
      rust.initConvexLogging();
    }
    return _instance!;
  }

  InternalConvexClient._internal(this._client);

  Future<ConvexValue> query({
    required String name,
    required ConvexArgs args,
  }) async {
    return _handleConvexCallback(
      () async => _fromRustValue(
        await _client.query(name: name, args: _toRustArgs(args)),
      ),
    );
  }

  Future<InternalSubscriptionHandle> subscribe({
    required String name,
    required ConvexArgs args,
    required void Function(InternalFunctionResult) onUpdate,
  }) async {
    final handle = await _client.subscribe(
      name: name,
      args: _toRustArgs(args),
      onUpdate: (value) => onUpdate(_fromRustFunctionResult(value)),
    );
    return _RustSubscriptionHandle(handle);
  }

  Stream<T> stream<T>({
    required String name,
    required ConvexArgs args,
    required T Function(ConvexValue) decodeResult,
  }) {
    final lock = LockedAsync();

    late StreamController<T> controller;
    InternalSubscriptionHandle? subscriptionHandle;

    void startSubscription() {
      lock.run((state) async {
        state.guard();
        try {
          final newHandle = await subscribe(
            name: name,
            args: args,
            onUpdate: (value) {
              state.guard();

              if (controller.isClosed) {
                return;
              }
              switch (value) {
                case InternalFunctionResultValue(:final value):
                  controller.add(decodeResult(value));
                case InternalFunctionResultErrorMessage(:final message):
                  controller.addError(ConvexClientError.internal(message));
                case InternalFunctionResultConvexError(
                  :final message,
                  :final data,
                ):
                  controller.addError(
                    ConvexError.internal(message, decodeValue(data)),
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
    return _handleConvexCallback(
      () async => _fromRustValue(
        await _client.mutation(name: name, args: _toRustArgs(args)),
      ),
    );
  }

  Future<ConvexValue> action({
    required String name,
    required ConvexArgs args,
  }) async {
    return _handleConvexCallback(
      () async => _fromRustValue(
        await _client.action(name: name, args: _toRustArgs(args)),
      ),
    );
  }

  Future<void> setAuth({required String? token}) async {
    return await _client.setAuth(token: token);
  }

  Future<void> setAuthCallback({
    FutureOr<String> Function(bool)? fetcher,
  }) async {
    if (fetcher == null) {
      return await _client.setAuthCallback(fetcher: null);
    } else {
      return await _client.setAuthCallback(
        fetcher: rust.DartAuthTokenFetcher(
          fetcher: (n) async {
            final result = await fetcher(n);
            return rust.AuthenticationToken.user(result);
          },
        ),
      );
    }
  }
}

class _RustSubscriptionHandle implements InternalSubscriptionHandle {
  final rust.SubscriptionHandle _handle;

  _RustSubscriptionHandle(this._handle);

  @override
  void cancel() {
    _handle.cancel();
  }
}

Future<T> _handleConvexCallback<T>(Future<T> Function() callback) async {
  try {
    return await callback();
  } on rust.ClientError_InternalError catch (e) {
    throw ConvexClientError.internal(e.msg);
  } on rust.ClientError_ConvexError catch (e) {
    throw ConvexError.internal(
      e.err.message,
      decodeValue(_fromRustValue(e.err.data)),
    );
  } on rust.ClientError_ServerError catch (e) {
    throw ConvexClientError.internal(e.msg);
  }
}

rust.BTreeMapStringValue _toRustArgs(ConvexArgs args) {
  return rust.hashmapToBtreemap(
    hashmap: args.map((key, value) => MapEntry(key, _toRustValue(value))),
  );
}

rust.Value _toRustValue(ConvexValue value) {
  return switch (value) {
    ConvexValueNull() => rust.Value.null_(),
    ConvexValueInt64(:final value) => rust.Value.int64(
      PlatformInt64Util.from(value),
    ),
    ConvexValueFloat64(:final value) => rust.Value.float64(value),
    ConvexValueBoolean(:final value) => rust.Value.boolean(value),
    ConvexValueString(:final value) => rust.Value.string(value),
    ConvexValueBytes(:final value) => rust.Value.bytes(value),
    ConvexValueArray(:final value) => rust.Value.array(
      value.map(_toRustValue).toList(),
    ),
    ConvexValueObject(:final value) => rust.Value.object(
      rust.hashmapToBtreemap(
        hashmap: value.unlockView.map(
          (key, value) => MapEntry(key, _toRustValue(value)),
        ),
      ),
    ),
  };
}

ConvexValue _fromRustValue(rust.Value value) {
  return switch (value) {
    rust.Value_Null() => const ConvexValue.null_(),
    rust.Value_Int64(:final field0) => ConvexValue.int64(field0),
    rust.Value_Float64(:final field0) => ConvexValue.float64(field0),
    rust.Value_Boolean(:final field0) => ConvexValue.boolean(field0),
    rust.Value_String(:final field0) => ConvexValue.string(field0),
    rust.Value_Bytes(:final field0) => ConvexValue.bytes(field0),
    rust.Value_Array(:final field0) => ConvexValue.array(
      field0.map(_fromRustValue).toIList(),
    ),
    rust.Value_Object(:final field0) => ConvexValue.object(
      rust
          .btreemapToHashmap(btreemap: field0)
          .map((key, value) => MapEntry(key, _fromRustValue(value)))
          .lock,
    ),
  };
}

InternalFunctionResult _fromRustFunctionResult(rust.FunctionResult value) {
  return switch (value) {
    rust.FunctionResult_Value(:final field0) => InternalFunctionResultValue(
      _fromRustValue(field0),
    ),
    rust.FunctionResult_ErrorMessage(:final field0) =>
      InternalFunctionResultErrorMessage(field0),
    rust.FunctionResult_ConvexError(:final field0) =>
      InternalFunctionResultConvexError(
        field0.message,
        _fromRustValue(field0.data),
      ),
  };
}

WebSocketState _fromRustState(rust.WebSocketState state) {
  return switch (state) {
    rust.WebSocketState.connected => WebSocketState.connected,
    rust.WebSocketState.connecting => WebSocketState.connecting,
  };
}
