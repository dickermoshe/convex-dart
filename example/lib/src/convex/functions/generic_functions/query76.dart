// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query76Response> query76(Query76Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query76',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query76Response> query76Stream(Query76Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query76',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query76Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on402530 in args.i.entries) on402530.key: encodeValue(null),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query76Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on420080) => (
      i: (on420080['i'] as IMap<String, dynamic>).map(
        (on389576, on87334) => MapEntry(on389576, null),
      ),
    ),
  );
}

typedef Query76Args = ({IMap<String, void> i});
typedef Query76Response = ({IMap<String, void> i});
