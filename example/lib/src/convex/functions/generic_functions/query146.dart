// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query146Response> query146(Query146Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query146',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query146Response> query146Stream(Query146Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query146',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query146Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue(args.i.data),
        if (args.i.metadata.isDefined)
          'metadata': encodeValue(args.i.metadata.asDefined().value),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query146Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on706816) => (
      i: (on706816['i'] as IMap<String, dynamic>).then(
        (on244586) => (
          data: (on244586['data'] as Uint8ListWithEquality),
          metadata: on244586.containsKey('metadata')
              ? Defined<dynamic>((on244586['metadata'] as dynamic))
              : Undefined<dynamic>(),
        ),
      ),
    ),
  );
}

typedef Query146Args = ({
  ({Uint8ListWithEquality data, Optional<dynamic> metadata}) i,
});
typedef Query146Response = ({
  ({Uint8ListWithEquality data, Optional<dynamic> metadata}) i,
});
