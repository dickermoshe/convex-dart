// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query159Response> query159(Query159Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query159',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query159Response> query159Stream(Query159Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query159',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query159Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i.value)});
}

@pragma("vm:prefer-inline")
Query159Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on538808) => (i: $10$20.fromValue(on538808['i'])),
  );
}

typedef Query159Args = ({$10$20 i});
typedef Query159Response = ({$10$20 i});
