// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query203Response> query203(Query203Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query203',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query203Response> query203Stream(Query203Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query203',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query203Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on429771) => encodeValue(on429771),
          (on419154) => encodeValue(on419154),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query203Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on731220) => (
      i: Union2<String, double>(() {
        try {
          return (on731220['i'] as String);
        } catch (e) {}

        try {
          return (on731220['i'] as double);
        } catch (e) {}

        throw Exception(
          (on731220['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<String, double>",
        );
      }()),
    ),
  );
}

typedef Query203Args = ({Union2<String, double> i});
typedef Query203Response = ({Union2<String, double> i});
