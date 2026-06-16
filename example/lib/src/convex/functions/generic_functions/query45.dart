// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query45Response> query45(Query45Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query45',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query45Response> query45Stream(Query45Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query45',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query45Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on709767) => encodeValue(on709767)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query45Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on251785) => (
      i: (on251785['i'] as IList<dynamic>)
          .map((on654163) => $true.validate(on654163))
          .toIList(),
    ),
  );
}

typedef Query45Args = ({IList<$true> i});
typedef Query45Response = ({IList<$true> i});
