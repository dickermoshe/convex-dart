// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query149Response> query149(Query149Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query149',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query149Response> query149Stream(Query149Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query149',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query149Args args) {
  return encodeArgs({
    'i': encodeValue({
      'a': encodeValue(args.i.a),
      'b': encodeValue(args.i.b),
      'c': encodeValue(args.i.c),
    }),
  });
}

@pragma("vm:prefer-inline")
Query149Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          a: $foo.validate(_v1['a']),
          b: $123_0.validate(_v1['b']),
          c: $false.validate(_v1['c']),
        ),
      ),
    ),
  );
}

typedef Query149Args = ({({$foo a, $123_0 b, $false c}) i});
typedef Query149Response = ({({$foo a, $123_0 b, $false c}) i});
