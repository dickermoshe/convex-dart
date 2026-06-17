// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<SetTaskCompletionResponse> setTaskCompletion(
  SetTaskCompletionArgs args,
) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.mutation(
    name: 'tasks:setTaskCompletion',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(SetTaskCompletionArgs args) {
  return encodeArgs({
    'id': encodeValue(args.id),
    'isCompleted': encodeValue(args.isCompleted),
  });
}

@pragma("vm:prefer-inline")
SetTaskCompletionResponse deserialize(ConvexValue map) {
  return (body: null);
}

typedef SetTaskCompletionArgs = ({TasksId id, bool isCompleted});
typedef SetTaskCompletionResponse = ({void body});
