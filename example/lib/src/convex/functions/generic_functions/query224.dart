// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query224Response> query224(Query224Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query224',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query224Response> query224Stream(Query224Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query224',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query224Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on983051) => encodeValue(on983051.value)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query224Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on894626) => (
      i: (on894626['i'] as IList<dynamic>)
          .map((on496047) => $cat$dog.fromValue(on496047))
          .toIList(),
    ),
  );
}

typedef Query224Args = ({IList<$cat$dog> i});
typedef Query224Response = ({IList<$cat$dog> i});
