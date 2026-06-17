// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<UpdateTaskResponse> updateTask(UpdateTaskArgs args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.mutation(
    name: 'tasks:updateTask',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(UpdateTaskArgs args) {
  return encodeArgs({
    'id': encodeValue(args.id),
    if (args.isCompleted.isDefined)
      'isCompleted': encodeValue(args.isCompleted.asDefined().value),
    if (args.text.isDefined) 'text': encodeValue(args.text.asDefined().value),
  });
}

@pragma("vm:prefer-inline")
UpdateTaskResponse deserialize(ConvexValue map) {
  return (body: null);
}

typedef UpdateTaskArgs = ({
  TasksId id,
  Optional<bool> isCompleted,
  Optional<String> text,
});
typedef UpdateTaskResponse = ({void body});
