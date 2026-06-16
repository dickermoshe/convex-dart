// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query64Response> query64(Query64Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query64',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query64Response> query64Stream(Query64Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query64',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query64Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on994494) => encodeValue(on994494)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query64Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on969720) => (
      i: (on969720['i'] as IList<dynamic>)
          .map((on683049) => (on683049 as dynamic))
          .toIList(),
    ),
  );
}

typedef Query64Args = ({IList<dynamic?> i});
typedef Query64Response = ({IList<dynamic?> i});
