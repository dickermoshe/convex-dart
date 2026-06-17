// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query225Response> query225(Query225Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query225',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query225Response> query225Stream(Query225Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query225',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query225Args args) {
  return encodeArgs({
    if (args.i.isDefined)
      'i': encodeValue(
        args.i.asDefined().value.split(
          (_v0) => encodeValue(_v0),
          (_v1) => encodeValue(_v1),
        ),
      ),
  });
}

@pragma("vm:prefer-inline")
Query225Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: _v0.containsKey('i')
          ? Defined<Union2<String, double>>(
              Union2<String, double>(() {
                try {
                  return (_v0['i'] as String);
                } catch (e) {}

                try {
                  return (_v0['i'] as double);
                } catch (e) {}

                throw Exception(
                  (_v0['i'].toString() ?? "null") +
                      r" cannot be deserialized into a Union2<String, double>",
                );
              }()),
            )
          : Undefined<Union2<String, double>>(),
    ),
  );
}

typedef Query225Args = ({Optional<Union2<String, double>> i});
typedef Query225Response = ({Optional<Union2<String, double>> i});
