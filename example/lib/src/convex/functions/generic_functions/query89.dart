// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query89Response> query89(Query89Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query89',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query89Response> query89Stream(Query89Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query89',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query89Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on31718 in args.i.entries)
          on31718.key: encodeValue(encodeValue(on31718.value)),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query89Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on405823) => (
      i: (on405823['i'] as IMap<String, dynamic>).map(
        (on430873, on186781) => MapEntry(
          on430873,
          on186781 == null ? null : $1_0.validate(on186781),
        ),
      ),
    ),
  );
}

typedef Query89Args = ({IMap<String, $1_0?> i});
typedef Query89Response = ({IMap<String, $1_0?> i});
