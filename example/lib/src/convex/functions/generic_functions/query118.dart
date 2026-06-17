// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query118Response> query118(Query118Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query118',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query118Response> query118Stream(Query118Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query118',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query118Args args) {
  return encodeArgs({
    'i': encodeValue({
      'config': encodeValue({
        for (final _v0 in args.i.config.entries)
          _v0.key: encodeValue(
            encodeValue(
              _v0.value.split(
                (_v1) => encodeValue(_v1),
                (_v2) => encodeValue(_v2),
                (_v3) => encodeValue(_v3),
              ),
            ),
          ),
      }),
      'fallback': encodeValue({
        'enabled': encodeValue(args.i.fallback.enabled),
        'value': encodeValue(args.i.fallback.value),
      }),
    }),
  });
}

@pragma("vm:prefer-inline")
Query118Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          config: (_v1['config'] as IMap<String, dynamic>).map(
            (_v2, _v3) => MapEntry(
              _v2,
              Union3<String, double, bool>(() {
                try {
                  return (_v3 as String);
                } catch (e) {}

                try {
                  return (_v3 as double);
                } catch (e) {}

                try {
                  return (_v3 as bool);
                } catch (e) {}

                throw Exception(
                  (_v3.toString() ?? "null") +
                      r" cannot be deserialized into a Union3<String, double, bool>",
                );
              }()),
            ),
          ),
          fallback: (_v1['fallback'] as IMap<String, dynamic>).then(
            (_v4) => (
              enabled: (_v4['enabled'] as bool),
              value: (_v4['value'] as dynamic),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query118Args = ({
  ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i,
});
typedef Query118Response = ({
  ({
    IMap<String, Union3<String, double, bool>> config,
    ({bool enabled, dynamic value}) fallback,
  })
  i,
});
