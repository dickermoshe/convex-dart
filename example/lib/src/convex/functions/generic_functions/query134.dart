// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query134Response> query134(Query134Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query134',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query134Response> query134Stream(Query134Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query134',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query134Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'a': encodeValue(
          args.i.a.split(
            (_v0) => encodeValue(_v0),
            (_v1) => encodeValue(_v1.map((_v2) => encodeValue(_v2)).toIList()),
          ),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query134Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          a: Union2<String, IList<bool>>(() {
            try {
              return (_v1['a'] as String);
            } catch (e) {}

            try {
              return (_v1['a'] as IList<dynamic>)
                  .map((_v2) => (_v2 as bool))
                  .toIList();
            } catch (e) {}

            throw Exception(
              (_v1['a'].toString() ?? "null") +
                  r" cannot be deserialized into a Union2<String, IList<bool>>",
            );
          }()),
        ),
      ),
    ),
  );
}

typedef Query134Args = ({({Union2<String, IList<bool>> a}) i});
typedef Query134Response = ({({Union2<String, IList<bool>> a}) i});
