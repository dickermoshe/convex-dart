// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query141Response> query141(Query141Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query141',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query141Response> query141Stream(Query141Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query141',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query141Args args) {
  return encodeArgs({
    'i': encodeValue({
      'a': encodeValue({
        'b': encodeValue({
          'c': encodeValue(
            args.i.a.b.c
                .map((_v0) => encodeValue({'d': encodeValue(_v0.d)}))
                .toIList(),
          ),
        }),
      }),
    }),
  });
}

@pragma("vm:prefer-inline")
Query141Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          a: (_v1['a'] as IMap<String, dynamic>).then(
            (_v2) => (
              b: (_v2['b'] as IMap<String, dynamic>).then(
                (_v3) => (
                  c: (_v3['c'] as IList<dynamic>)
                      .map(
                        (_v4) => (_v4 as IMap<String, dynamic>).then(
                          (_v5) => (d: (_v5['d'] as String)),
                        ),
                      )
                      .toIList(),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query141Args = ({({({({IList<({String d})> c}) b}) a}) i});
typedef Query141Response = ({({({({IList<({String d})> c}) b}) a}) i});
