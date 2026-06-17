// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query122Response> query122(Query122Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query122',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query122Response> query122Stream(Query122Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query122',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query122Args args) {
  return encodeArgs({
    'i': encodeValue({
      for (final _v0 in args.i.entries)
        _v0.key: encodeValue(
          encodeValue({
            'required': encodeValue(_v0.value.required),
            'schema': encodeValue(
              _v0.value.schema.split(
                (_v1) => encodeValue({
                  'primitive': encodeValue(_v1.primitive.value),
                }),
                (_v2) => encodeValue({
                  'fields': encodeValue({
                    for (final _v3 in _v2.fields.entries)
                      _v3.key: encodeValue(encodeValue(_v3.value)),
                  }),
                }),
                (_v4) =>
                    encodeValue({'elementType': encodeValue(_v4.elementType)}),
              ),
            ),
            'type': encodeValue(_v0.value.type.value),
          }),
        ),
    }),
  });
}

@pragma("vm:prefer-inline")
Query122Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).map(
        (_v1, _v2) => MapEntry(
          _v1,
          (_v2 as IMap<String, dynamic>).then(
            (_v3) => (
              required: (_v3['required'] as bool),
              schema:
                  Union3<
                    ({$string$number$boolean primitive}),
                    ({IMap<String, String> fields}),
                    ({String elementType})
                  >(() {
                    try {
                      return (_v3['schema'] as IMap<String, dynamic>).then(
                        (_v4) => (
                          primitive: $string$number$boolean.fromValue(
                            _v4['primitive'],
                          ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (_v3['schema'] as IMap<String, dynamic>).then(
                        (_v5) => (
                          fields: (_v5['fields'] as IMap<String, dynamic>).map(
                            (_v6, _v7) => MapEntry(_v6, (_v7 as String)),
                          ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (_v3['schema'] as IMap<String, dynamic>).then(
                        (_v8) => (elementType: (_v8['elementType'] as String)),
                      );
                    } catch (e) {}

                    throw Exception(
                      (_v3['schema'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<({$string$number$boolean primitive}), ({IMap<String, String> fields}), ({String elementType})>",
                    );
                  }()),
              type: $primitive$object$array.fromValue(_v3['type']),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query122Args = ({
  IMap<
    String,
    ({
      bool required,
      Union3<
        ({$string$number$boolean primitive}),
        ({IMap<String, String> fields}),
        ({String elementType})
      >
      schema,
      $primitive$object$array type,
    })
  >
  i,
});
typedef Query122Response = ({
  IMap<
    String,
    ({
      bool required,
      Union3<
        ({$string$number$boolean primitive}),
        ({IMap<String, String> fields}),
        ({String elementType})
      >
      schema,
      $primitive$object$array type,
    })
  >
  i,
});
