// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query188Response> query188(Query188Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query188',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query188Response> query188Stream(Query188Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query188',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query188Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on749168) => encodeValue(on749168),
          (on557229) => encodeValue(on557229),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query188Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on922138) => (
      i: Union2<dynamic, FallbackId>(() {
        try {
          return (on922138['i'] as dynamic);
        } catch (e) {}

        try {
          return FallbackId(on922138['i'] as String);
        } catch (e) {}

        throw Exception(
          (on922138['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<dynamic, FallbackId>",
        );
      }()),
    ),
  );
}

typedef Query188Args = ({Union2<dynamic, FallbackId> i});
typedef Query188Response = ({Union2<dynamic, FallbackId> i});
