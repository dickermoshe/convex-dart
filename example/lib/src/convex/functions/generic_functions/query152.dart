// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query152Response> query152(Query152Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query152',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query152Response> query152Stream(Query152Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query152',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query152Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on360034 in args.i.entries)
          on360034.key: encodeValue(encodeValue(on360034.value)),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query152Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on665357) => (
      i: (on665357['i'] as IMap<String, dynamic>).map(
        (on912926, on34833) => MapEntry(on912926, (on34833 as bool)),
      ),
    ),
  );
}

typedef Query152Args = ({IMap<String, bool> i});
typedef Query152Response = ({IMap<String, bool> i});
