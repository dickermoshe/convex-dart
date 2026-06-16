// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query157Response> query157(Query157Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query157',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query157Response> query157Stream(Query157Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query157',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query157Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on843888 in args.i.entries)
          on843888.key: encodeValue(encodeValue(on843888.value)),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query157Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on136530) => (
      i: (on136530['i'] as IMap<String, dynamic>).map(
        (on759600, on215754) => MapEntry(on759600, (on215754 as dynamic)),
      ),
    ),
  );
}

typedef Query157Args = ({IMap<String, dynamic> i});
typedef Query157Response = ({IMap<String, dynamic> i});
