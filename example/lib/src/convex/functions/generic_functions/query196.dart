// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query196Response> query196(Query196Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query196',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query196Response> query196Stream(Query196Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query196',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query196Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on547060) => encodeValue(on547060)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query196Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on47809) => (
      i: (on47809['i'] as IList<dynamic>)
          .map((on997249) => (on997249 as String))
          .toIList(),
    ),
  );
}

typedef Query196Args = ({IList<String> i});
typedef Query196Response = ({IList<String> i});
