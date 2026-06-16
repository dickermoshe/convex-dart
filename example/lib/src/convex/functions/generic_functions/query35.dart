// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query35Response> query35(Query35Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query35',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query35Response> query35Stream(Query35Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query35',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query35Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on365287) => encodeValue(on365287)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query35Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on651904) => (
      i: (on651904['i'] as IList<dynamic>)
          .map((on369527) => (on369527 as String))
          .toIList(),
    ),
  );
}

typedef Query35Args = ({IList<String> i});
typedef Query35Response = ({IList<String> i});
