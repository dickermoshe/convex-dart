// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query221Response> query221(Query221Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query221',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query221Response> query221Stream(Query221Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query221',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query221Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        if (args.i.a.isDefined)
          'a': encodeValue({'b': encodeValue(args.i.a.asDefined().value.b)}),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query221Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          a: _v1.containsKey('a')
              ? Defined<({String b})>(
                  (_v1['a'] as IMap<String, dynamic>).then(
                    (_v2) => (b: (_v2['b'] as String)),
                  ),
                )
              : Undefined<({String b})>(),
        ),
      ),
    ),
  );
}

typedef Query221Args = ({({Optional<({String b})> a}) i});
typedef Query221Response = ({({Optional<({String b})> a}) i});
