// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<GetTaskResponse> getTask(GetTaskArgs args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'tasks:getTask',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<GetTaskResponse> getTaskStream(GetTaskArgs args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'tasks:getTask',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(GetTaskArgs args) {
  return encodeArgs({'id': encodeValue(args.id)});
}

@pragma("vm:prefer-inline")
GetTaskResponse deserialize(ConvexValue map) {
  return (
    body: (decodeValue(map) as IMap<String, dynamic>?)?.then(
      (_v0) => (
        creationTime: (_v0['_creationTime'] as double),
        id: TasksId(_v0['_id'] as String),
        isCompleted: (_v0['isCompleted'] as bool),
        text: (_v0['text'] as String),
      ),
    ),
  );
}

typedef GetTaskArgs = ({TasksId id});
typedef GetTaskResponse = ({
  ({double creationTime, TasksId id, bool isCompleted, String text})? body,
});
