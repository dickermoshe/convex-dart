// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query163Response> query163(Query163Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query163',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query163Response> query163Stream(Query163Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query163',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query163Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on822749) => encodeValue(on822749),
          (on18785) => encodeValue(on18785),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query163Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on978933) => (
      i: Union2<AId, BId>(() {
        try {
          return AId(on978933['i'] as String);
        } catch (e) {}

        try {
          return BId(on978933['i'] as String);
        } catch (e) {}

        throw Exception(
          (on978933['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<AId, BId>",
        );
      }()),
    ),
  );
}

typedef Query163Args = ({Union2<AId, BId> i});
typedef Query163Response = ({Union2<AId, BId> i});
