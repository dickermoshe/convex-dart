// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query67Response> query67(Query67Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query67',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query67Response> query67Stream(Query67Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query67',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query67Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on715229) => encodeValue(on715229)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query67Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on28236) => (
      i: (on28236['i'] as IList<dynamic>)
          .map((on371505) => on371505 == null ? null : $true.validate(on371505))
          .toIList(),
    ),
  );
}

typedef Query67Args = ({IList<$true?> i});
typedef Query67Response = ({IList<$true?> i});
