// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query119Response> query119(Query119Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query119',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query119Response> query119Stream(Query119Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query119',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query119Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'data': encodeValue(
          args.i.data.split(
            (_v0) => encodeValue({
              'content': encodeValue(_v0.content),
              'type': encodeValue(_v0.type),
            }),
            (_v1) => encodeValue({
              'content': encodeValue(_v1.content),
              'type': encodeValue(_v1.type),
            }),
            (_v2) => encodeValue({
              'content': encodeValue(_v2.content),
              'type': encodeValue(_v2.type),
            }),
          ),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query119Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          data:
              Union3<
                ({String content, $text type}),
                ({double content, $number type}),
                ({bool content, $boolean type})
              >(() {
                try {
                  return (_v1['data'] as IMap<String, dynamic>).then(
                    (_v2) => (
                      content: (_v2['content'] as String),
                      type: $text.validate(_v2['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (_v1['data'] as IMap<String, dynamic>).then(
                    (_v3) => (
                      content: (_v3['content'] as double),
                      type: $number.validate(_v3['type']),
                    ),
                  );
                } catch (e) {}

                try {
                  return (_v1['data'] as IMap<String, dynamic>).then(
                    (_v4) => (
                      content: (_v4['content'] as bool),
                      type: $boolean.validate(_v4['type']),
                    ),
                  );
                } catch (e) {}

                throw Exception(
                  (_v1['data'].toString() ?? "null") +
                      r" cannot be deserialized into a Union3<({String content,$text type}), ({double content,$number type}), ({bool content,$boolean type})>",
                );
              }()),
        ),
      ),
    ),
  );
}

typedef Query119Args = ({
  ({
    Union3<
      ({String content, $text type}),
      ({double content, $number type}),
      ({bool content, $boolean type})
    >
    data,
  })
  i,
});
typedef Query119Response = ({
  ({
    Union3<
      ({String content, $text type}),
      ({double content, $number type}),
      ({bool content, $boolean type})
    >
    data,
  })
  i,
});
