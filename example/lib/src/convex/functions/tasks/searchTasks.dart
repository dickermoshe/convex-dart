// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<SearchTasksResponse> searchTasks(SearchTasksArgs args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'tasks:searchTasks',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<SearchTasksResponse> searchTasksStream(SearchTasksArgs args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'tasks:searchTasks',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(SearchTasksArgs args) {
  return encodeArgs({'searchText': encodeValue(args.searchText)});
}

@pragma("vm:prefer-inline")
SearchTasksResponse deserialize(ConvexValue map) {
  return (
    body: (decodeValue(map) as IList<dynamic>)
        .map(
          (_v0) => (_v0 as IMap<String, dynamic>).then(
            (_v1) => (
              creationTime: (_v1['_creationTime'] as double),
              id: TasksId(_v1['_id'] as String),
              isCompleted: (_v1['isCompleted'] as bool),
              text: (_v1['text'] as String),
            ),
          ),
        )
        .toIList(),
  );
}

typedef SearchTasksArgs = ({String searchText});
typedef SearchTasksResponse = ({
  IList<({double creationTime, TasksId id, bool isCompleted, String text})>
  body,
});
