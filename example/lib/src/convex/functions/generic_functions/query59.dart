// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query59Response> query59(Query59Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query59',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query59Response> query59Stream(Query59Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query59',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query59Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on849646) => encodeValue(on849646)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query59Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on390974) => (
      i: (on390974['i'] as IList<dynamic>)
          .map((on380459) => (on380459 as double?))
          .toIList(),
    ),
  );
}

typedef Query59Args = ({IList<double?> i});
typedef Query59Response = ({IList<double?> i});
