// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query173Response> query173(Query173Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query173',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query173Response> query173Stream(Query173Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query173',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query173Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on904900) => encodeValue({'type': encodeValue(on904900.type)}),
          (on527949) => encodeValue({'type': encodeValue(on527949.type)}),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query173Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on606586) => (
      i: Union2<({$A type}), ({$B type})>(() {
        try {
          return (on606586['i'] as IMap<String, dynamic>).then(
            (on186374) => (type: $A.validate(on186374['type'])),
          );
        } catch (e) {}

        try {
          return (on606586['i'] as IMap<String, dynamic>).then(
            (on11943) => (type: $B.validate(on11943['type'])),
          );
        } catch (e) {}

        throw Exception(
          (on606586['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<({$A type}), ({$B type})>",
        );
      }()),
    ),
  );
}

typedef Query173Args = ({Union2<({$A type}), ({$B type})> i});
typedef Query173Response = ({Union2<({$A type}), ({$B type})> i});
