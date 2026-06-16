// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query144Response> query144(Query144Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query144',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query144Response> query144Stream(Query144Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query144',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query144Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'arg1': encodeValue(args.arg1),
      'arg2': encodeValue(args.arg2),
      'arg3': encodeValue(args.arg3),
    },
  );
}

@pragma("vm:prefer-inline")
Query144Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on379191) => (
      arg1: (on379191['arg1'] as String),
      arg2: (on379191['arg2'] as double),
      arg3: (on379191['arg3'] as bool),
    ),
  );
}

typedef Query144Args = ({String arg1, double arg2, bool arg3});
typedef Query144Response = ({String arg1, double arg2, bool arg3});
