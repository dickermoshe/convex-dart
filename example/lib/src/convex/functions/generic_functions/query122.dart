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
BTreeMapStringValue serialize(Query122Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on540829 in args.i.entries)
          on540829.key: encodeValue(
            encodeValue({
              'required': encodeValue(on540829.value.required),
              'schema': encodeValue(
                on540829.value.schema.split(
                  (on614126) => encodeValue({
                    'primitive': encodeValue(on614126.primitive.value),
                  }),
                  (on332336) => encodeValue({
                    'fields': encodeValue({
                      for (final on195609 in on332336.fields.entries)
                        on195609.key: encodeValue(encodeValue(on195609.value)),
                    }),
                  }),
                  (on772244) => encodeValue({
                    'elementType': encodeValue(on772244.elementType),
                  }),
                ),
              ),
              'type': encodeValue(on540829.value.type.value),
            }),
          ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query122Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on210790) => (
      i: (on210790['i'] as IMap<String, dynamic>).map(
        (on469736, on328483) => MapEntry(
          on469736,
          (on328483 as IMap<String, dynamic>).then(
            (on127080) => (
              required: (on127080['required'] as bool),
              schema:
                  Union3<
                    ({$string$number$boolean primitive}),
                    ({IMap<String, String> fields}),
                    ({String elementType})
                  >(() {
                    try {
                      return (on127080['schema'] as IMap<String, dynamic>).then(
                        (on882035) => (
                          primitive: $string$number$boolean.fromValue(
                            on882035['primitive'],
                          ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on127080['schema'] as IMap<String, dynamic>).then(
                        (on680495) => (
                          fields: (on680495['fields'] as IMap<String, dynamic>)
                              .map(
                                (on975500, on33900) =>
                                    MapEntry(on975500, (on33900 as String)),
                              ),
                        ),
                      );
                    } catch (e) {}

                    try {
                      return (on127080['schema'] as IMap<String, dynamic>).then(
                        (on525024) =>
                            (elementType: (on525024['elementType'] as String)),
                      );
                    } catch (e) {}

                    throw Exception(
                      (on127080['schema'].toString() ?? "null") +
                          r" cannot be deserialized into a Union3<({$string$number$boolean primitive}), ({IMap<String, String> fields}), ({String elementType})>",
                    );
                  }()),
              type: $primitive$object$array.fromValue(on127080['type']),
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
