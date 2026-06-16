// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query174Response> query174(Query174Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query174',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query174Response> query174Stream(Query174Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query174',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query174Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.map((on721336) => encodeValue(on721336)).toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query174Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on305156) => (
      i: (on305156['i'] as IList<dynamic>)
          .map((on339518) => (on339518 as dynamic))
          .toIList(),
    ),
  );
}

typedef Query174Args = ({IList<dynamic> i});
typedef Query174Response = ({IList<dynamic> i});
