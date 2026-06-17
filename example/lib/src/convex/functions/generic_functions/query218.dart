// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query218Response> query218(Query218Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query218',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query218Response> query218Stream(Query218Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query218',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query218Args args) {
  return encodeArgs({
    'i': encodeValue(
      args.i.split(
        (_v0) => encodeValue({
          'data': encodeValue(_v0.data),
          'success': encodeValue(_v0.success),
        }),
        (_v1) => encodeValue({
          'error': encodeValue(_v1.error),
          'success': encodeValue(_v1.success),
        }),
      ),
    ),
  });
}

@pragma("vm:prefer-inline")
Query218Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i:
          Union2<
            ({dynamic data, $true success}),
            ({String error, $false success})
          >(() {
            try {
              return (_v0['i'] as IMap<String, dynamic>).then(
                (_v1) => (
                  data: (_v1['data'] as dynamic),
                  success: $true.validate(_v1['success']),
                ),
              );
            } catch (e) {}

            try {
              return (_v0['i'] as IMap<String, dynamic>).then(
                (_v2) => (
                  error: (_v2['error'] as String),
                  success: $false.validate(_v2['success']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (_v0['i'].toString() ?? "null") +
                  r" cannot be deserialized into a Union2<({dynamic data,$true success}), ({String error,$false success})>",
            );
          }()),
    ),
  );
}

typedef Query218Args = ({
  Union2<({dynamic data, $true success}), ({String error, $false success})> i,
});
typedef Query218Response = ({
  Union2<({dynamic data, $true success}), ({String error, $false success})> i,
});
