// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query44Response> query44(Query44Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query44',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query44Response> query44Stream(Query44Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query44',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query44Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on699372) => encodeValue(on699372)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query44Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on285456) => (
      i: (on285456['i'] as IList<dynamic>)
          .map((on533350) => $1_0.validate(on533350))
          .toIList(),
    ),
  );
}

typedef Query44Args = ({IList<$1_0> i});
typedef Query44Response = ({IList<$1_0> i});
