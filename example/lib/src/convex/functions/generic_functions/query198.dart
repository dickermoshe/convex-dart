// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query198Response> query198(Query198Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query198',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query198Response> query198Stream(Query198Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query198',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query198Args args) {
  return encodeArgs({
    'i': encodeValue({
      'name': encodeValue(args.i.name),
      'value': encodeValue(args.i.value),
    }),
  });
}

@pragma("vm:prefer-inline")
Query198Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) =>
            (name: (_v1['name'] as String), value: (_v1['value'] as dynamic)),
      ),
    ),
  );
}

typedef Query198Args = ({({String name, dynamic value}) i});
typedef Query198Response = ({({String name, dynamic value}) i});
