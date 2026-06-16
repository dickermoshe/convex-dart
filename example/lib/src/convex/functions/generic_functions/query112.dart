// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query112Response> query112(Query112Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query112',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query112Response> query112Stream(Query112Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query112',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query112Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'completed': encodeValue(args.i.completed),
        'id': encodeValue(args.i.id),
        'title': encodeValue(args.i.title),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query112Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on916921) => (
      i: (on916921['i'] as IMap<String, dynamic>).then(
        (on529627) => (
          completed: (on529627['completed'] as bool),
          id: TasksId(on529627['id'] as String),
          title: (on529627['title'] as String),
        ),
      ),
    ),
  );
}

typedef Query112Args = ({({bool completed, TasksId id, String title}) i});
typedef Query112Response = ({({bool completed, TasksId id, String title}) i});
