// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query206Response> query206(Query206Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query206',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query206Response> query206Stream(Query206Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query206',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query206Args args) {
  return encodeArgs({
    'i': encodeValue({
      'data': encodeValue(
        args.i.data
            .map((_v0) => encodeValue({'value': encodeValue(_v0.value)}))
            .toIList(),
      ),
    }),
  });
}

@pragma("vm:prefer-inline")
Query206Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          data: (_v1['data'] as IList<dynamic>)
              .map(
                (_v2) => (_v2 as IMap<String, dynamic>).then(
                  (_v3) => (value: (_v3['value'] as double)),
                ),
              )
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query206Args = ({({IList<({double value})> data}) i});
typedef Query206Response = ({({IList<({double value})> data}) i});
