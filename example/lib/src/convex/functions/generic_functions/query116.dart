// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query116Response> query116(Query116Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query116',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query116Response> query116Stream(Query116Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query116',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query116Args args) {
  return encodeArgs({
    'i': encodeValue({
      'data': encodeValue({
        'type': encodeValue(args.i.data.type.value),
        'value': encodeValue(args.i.data.value),
      }),
      'metadata': encodeValue({
        for (final _v0 in args.i.metadata.entries)
          _v0.key: encodeValue(encodeValue(_v0.value)),
      }),
    }),
  });
}

@pragma("vm:prefer-inline")
Query116Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          data: (_v1['data'] as IMap<String, dynamic>).then(
            (_v2) => (
              type: $text$number$boolean.fromValue(_v2['type']),
              value: (_v2['value'] as dynamic),
            ),
          ),
          metadata: (_v1['metadata'] as IMap<String, dynamic>).map(
            (_v3, _v4) => MapEntry(_v3, (_v4 as dynamic)),
          ),
        ),
      ),
    ),
  );
}

typedef Query116Args = ({
  ({
    ({$text$number$boolean type, dynamic value}) data,
    IMap<String, dynamic> metadata,
  })
  i,
});
typedef Query116Response = ({
  ({
    ({$text$number$boolean type, dynamic value}) data,
    IMap<String, dynamic> metadata,
  })
  i,
});
