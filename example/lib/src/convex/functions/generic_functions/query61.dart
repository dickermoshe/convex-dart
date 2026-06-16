// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query61Response> query61(Query61Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query61',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query61Response> query61Stream(Query61Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query61',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query61Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(args.i.map((on89350) => encodeValue(on89350)).toIList()),
    },
  );
}

@pragma("vm:prefer-inline")
Query61Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on410954) => (
      i: (on410954['i'] as IList<dynamic>)
          .map((on63173) => (on63173 as int?))
          .toIList(),
    ),
  );
}

typedef Query61Args = ({IList<int?> i});
typedef Query61Response = ({IList<int?> i});
