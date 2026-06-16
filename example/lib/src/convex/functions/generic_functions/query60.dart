// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query60Response> query60(Query60Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query60',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query60Response> query60Stream(Query60Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query60',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query60Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on857893) => encodeValue(on857893)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query60Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on243388) => (
      i: (on243388['i'] as IList<dynamic>)
          .map((on99430) => (on99430 as bool?))
          .toIList(),
    ),
  );
}

typedef Query60Args = ({IList<bool?> i});
typedef Query60Response = ({IList<bool?> i});
