// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query18Response> query18(Query18Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query18',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query18Response> query18Stream(Query18Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query18',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query18Args args) {
  return encodeArgs({
    if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value),
  });
}

@pragma("vm:prefer-inline")
Query18Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: _v0.containsKey('i')
          ? Defined<TasksId>(TasksId(_v0['i'] as String))
          : Undefined<TasksId>(),
    ),
  );
}

typedef Query18Args = ({Optional<TasksId> i});
typedef Query18Response = ({Optional<TasksId> i});
