// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query17Response> query17(Query17Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query17',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query17Response> query17Stream(Query17Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query17',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query17Args args) {
  return hashmapToBtreemap(
    hashmap: {if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value)},
  );
}

@pragma("vm:prefer-inline")
Query17Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on574657) => (
      i: on574657.containsKey('i')
          ? Defined<Uint8ListWithEquality>(
              (on574657['i'] as Uint8ListWithEquality),
            )
          : Undefined<Uint8ListWithEquality>(),
    ),
  );
}

typedef Query17Args = ({Optional<Uint8ListWithEquality> i});
typedef Query17Response = ({Optional<Uint8ListWithEquality> i});
