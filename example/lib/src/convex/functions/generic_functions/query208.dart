// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query208Response> query208(Query208Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query208',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query208Response> query208Stream(Query208Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query208',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query208Args args) {
  return hashmapToBtreemap(hashmap: {'i': encodeValue(args.i.value)});
}

@pragma("vm:prefer-inline")
Query208Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on956194) => (i: $on$off.fromValue(on956194['i'])),
  );
}

typedef Query208Args = ({$on$off i});
typedef Query208Response = ({$on$off i});
