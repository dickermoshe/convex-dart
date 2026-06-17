// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<UnionReturnResponse> unionReturn() async {
  final serializedArgs = serialize(null);
  final response = await InternalConvexClient.instance.query(
    name: 'primitive_returns:unionReturn',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<UnionReturnResponse> unionReturnStream() {
  final serializedArgs = serialize(null);
  return InternalConvexClient.instance.stream(
    name: 'primitive_returns:unionReturn',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(void args) {
  return encodeArgs({});
}

@pragma("vm:prefer-inline")
UnionReturnResponse deserialize(ConvexValue map) {
  return (
    body: Union2<String, double>(() {
      try {
        return (decodeValue(map) as String);
      } catch (e) {}

      try {
        return (decodeValue(map) as double);
      } catch (e) {}

      throw Exception(
        (decodeValue(map).toString() ?? "null") +
            r" cannot be deserialized into a Union2<String, double>",
      );
    }()),
  );
}

typedef UnionReturnResponse = ({Union2<String, double> body});
