// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query58Response> query58(Query58Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query58',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query58Response> query58Stream(Query58Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query58',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query58Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on501959) => encodeValue(on501959)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query58Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on794627) => (
      i: (on794627['i'] as IList<dynamic>)
          .map((on23228) => (on23228 as String?))
          .toIList(),
    ),
  );
}

typedef Query58Args = ({IList<String?> i});
typedef Query58Response = ({IList<String?> i});
