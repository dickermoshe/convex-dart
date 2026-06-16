// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query97Response> query97(Query97Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query97',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query97Response> query97Stream(Query97Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query97',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query97Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i?.split(
          (on759402) => encodeValue(on759402),
          (on595722) => encodeValue(on595722),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query97Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on249583) => (
      i: Union2<double, bool>(() {
        try {
          return (on249583['i'] as double?);
        } catch (e) {}

        try {
          return (on249583['i'] as bool?);
        } catch (e) {}

        if (on249583['i'] == null) {
          return null;
        }

        throw Exception(
          (on249583['i']?.toString() ?? "null") +
              r" cannot be deserialized into a Union2<double, bool>",
        );
      }()),
    ),
  );
}

typedef Query97Args = ({Union2<double, bool>? i});
typedef Query97Response = ({Union2<double, bool>? i});
