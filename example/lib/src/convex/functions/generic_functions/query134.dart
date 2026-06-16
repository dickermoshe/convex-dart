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
            (on502840) => encodeValue(on502840),
            (on546956) => encodeValue(
              on546956.map((on649032) => encodeValue(on649032)).toIList(),
            ),
          ),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query134Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on443215) => (
      i: (on443215['i'] as IMap<String, dynamic>).then(
        (on116063) => (
          a: Union2<String, IList<bool>>(() {
            try {
              return (on116063['a'] as String);
            } catch (e) {}

            try {
              return (on116063['a'] as IList<dynamic>)
                  .map((on700625) => (on700625 as bool))
                  .toIList();
            } catch (e) {}

            throw Exception(
              (on116063['a'].toString() ?? "null") +
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
