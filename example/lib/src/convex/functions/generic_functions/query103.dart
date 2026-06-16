// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query103Response> query103(Query103Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query103',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query103Response> query103Stream(Query103Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query103',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query103Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on934862) => encodeValue(on934862),
          (on900737) => encodeValue(on900737),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query103Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on208658) => (
      i: Union2<int, double>(() {
        try {
          return (on208658['i'] as int);
        } catch (e) {}

        try {
          return (on208658['i'] as double);
        } catch (e) {}

        throw Exception(
          (on208658['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<int, double>",
        );
      }()),
    ),
  );
}

typedef Query103Args = ({Union2<int, double> i});
typedef Query103Response = ({Union2<int, double> i});
