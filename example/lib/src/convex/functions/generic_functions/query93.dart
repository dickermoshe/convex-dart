// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query93Response> query93(Query93Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query93',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query93Response> query93Stream(Query93Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query93',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query93Args args) {
  return encodeArgs({
    'i': encodeValue(
      args.i.split((_v0) => encodeValue(_v0), (_v1) => encodeValue(_v1)),
    ),
  });
}

@pragma("vm:prefer-inline")
Query93Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: Union2<bool, double>(() {
        try {
          return (_v0['i'] as bool);
        } catch (e) {}

        try {
          return (_v0['i'] as double);
        } catch (e) {}

        throw Exception(
          (_v0['i'].toString() ?? "null") +
              r" cannot be deserialized into a Union2<bool, double>",
        );
      }()),
    ),
  );
}

typedef Query93Args = ({Union2<bool, double> i});
typedef Query93Response = ({Union2<bool, double> i});
