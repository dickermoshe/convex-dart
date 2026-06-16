// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query77Response> query77(Query77Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query77',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query77Response> query77Stream(Query77Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query77',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query77Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on246678 in args.i.entries)
          on246678.key: encodeValue(encodeValue(on246678.value)),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query77Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on323885) => (
      i: (on323885['i'] as IMap<String, dynamic>).map(
        (on490996, on537513) => MapEntry(on490996, $hi.validate(on537513)),
      ),
    ),
  );
}

typedef Query77Args = ({IMap<String, $hi> i});
typedef Query77Response = ({IMap<String, $hi> i});
