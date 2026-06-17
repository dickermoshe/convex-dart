// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query127Response> query127(Query127Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query127',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query127Response> query127Stream(Query127Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query127',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query127Args args) {
  return encodeArgs({
    'i': encodeValue({
      'variables': encodeValue({
        for (final _v0 in args.i.variables.entries)
          _v0.key: encodeValue(
            encodeValue(
              _v0.value.split(
                (_v1) => encodeValue(_v1),
                (_v2) => encodeValue(_v2),
                (_v3) => encodeValue(_v3),
                (_v4) =>
                    encodeValue(_v4.map((_v5) => encodeValue(_v5)).toIList()),
              ),
            ),
          ),
      }),
    }),
  });
}

@pragma("vm:prefer-inline")
Query127Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          variables: (_v1['variables'] as IMap<String, dynamic>).map(
            (_v2, _v3) => MapEntry(
              _v2,
              Union4<String, double, bool, IList<dynamic>>(() {
                try {
                  return (_v3 as String);
                } catch (e) {}

                try {
                  return (_v3 as double);
                } catch (e) {}

                try {
                  return (_v3 as bool);
                } catch (e) {}

                try {
                  return (_v3 as IList<dynamic>)
                      .map((_v4) => (_v4 as dynamic))
                      .toIList();
                } catch (e) {}

                throw Exception(
                  (_v3.toString() ?? "null") +
                      r" cannot be deserialized into a Union4<String, double, bool, IList<dynamic>>",
                );
              }()),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query127Args = ({
  ({IMap<String, Union4<String, double, bool, IList<dynamic>>> variables}) i,
});
typedef Query127Response = ({
  ({IMap<String, Union4<String, double, bool, IList<dynamic>>> variables}) i,
});
