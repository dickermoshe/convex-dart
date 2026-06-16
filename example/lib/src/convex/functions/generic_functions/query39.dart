// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query39Response> query39(Query39Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query39',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query39Response> query39Stream(Query39Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query39',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query39Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on283202) => encodeValue(on283202)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query39Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on773148) => (
      i: (on773148['i'] as IList<dynamic>)
          .map((on788721) => (on788721 as Uint8ListWithEquality))
          .toIList(),
    ),
  );
}

typedef Query39Args = ({IList<Uint8ListWithEquality> i});
typedef Query39Response = ({IList<Uint8ListWithEquality> i});
