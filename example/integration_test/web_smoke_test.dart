import 'dart:async';

import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await internal.InternalConvexClient.init(
      deploymentUrl: 'http://127.0.0.1:3210',
      logging: true,
      onStateChange: (_) {},
    );
  });

  test('query calls through the web Convex client', () async {
    final result = await internal.InternalConvexClient.instance.query(
      name: 'primitive_returns:anyReturn',
      args: const {},
    );

    expect(internal.decodeValue(result), 'Hello');
  });

  test('query stream emits and can be cancelled', () async {
    final firstValue = Completer<String>();
    late final StreamSubscription<dynamic> subscription;

    subscription = internal.InternalConvexClient.instance
        .stream<String>(
          name: 'primitive_returns:anyReturn',
          args: const {},
          decodeResult: (value) => internal.decodeValue(value) as String,
        )
        .listen((value) {
          if (!firstValue.isCompleted) {
            firstValue.complete(value);
          }
        }, onError: firstValue.completeError);

    final result = await firstValue.future.timeout(const Duration(seconds: 15));
    expect(result, 'Hello');

    await subscription.cancel();
  });
}
