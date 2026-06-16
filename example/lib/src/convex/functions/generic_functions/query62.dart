// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query62Response> query62(Query62Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query62',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query62Response> query62Stream(Query62Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query62',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query62Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on438343) => encodeValue(on438343)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query62Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on11541) => (
      i: (on11541['i'] as IList<dynamic>)
          .map((on207374) => (on207374 as Uint8ListWithEquality?))
          .toIList(),
    ),
  );
}

typedef Query62Args = ({IList<Uint8ListWithEquality?> i});
typedef Query62Response = ({IList<Uint8ListWithEquality?> i});
