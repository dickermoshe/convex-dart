// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query63Response> query63(Query63Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query63',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query63Response> query63Stream(Query63Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query63',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query63Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on619697) => encodeValue(on619697)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query63Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on969862) => (
      i: (on969862['i'] as IList<dynamic>)
          .map(
            (on651467) => on651467 == null ? null : TasksId(on651467 as String),
          )
          .toIList(),
    ),
  );
}

typedef Query63Args = ({IList<TasksId?> i});
typedef Query63Response = ({IList<TasksId?> i});
