// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query132Response> query132(Query132Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query132',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query132Response> query132Stream(Query132Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query132',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query132Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'a': encodeValue(
          args.i.a
              .map((_v0) => encodeValue({'b': encodeValue(_v0.b)}))
              .toIList(),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query132Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          a: (_v1['a'] as IList<dynamic>)
              .map(
                (_v2) => (_v2 as IMap<String, dynamic>).then(
                  (_v3) => (b: (_v3['b'] as String)),
                ),
              )
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query132Args = ({({IList<({String b})> a}) i});
typedef Query132Response = ({({IList<({String b})> a}) i});
