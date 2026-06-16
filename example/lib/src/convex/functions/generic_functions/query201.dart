// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query201Response> query201(Query201Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query201',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query201Response> query201Stream(Query201Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query201',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query201Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'a': encodeValue(args.i.a),
        'b': encodeValue(args.i.b),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query201Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on166927) => (
      i: (on166927['i'] as IMap<String, dynamic>).then(
        (on895811) =>
            (a: (on895811['a'] as String), b: (on895811['b'] as String)),
      ),
    ),
  );
}

typedef Query201Args = ({({String a, String b}) i});
typedef Query201Response = ({({String a, String b}) i});
