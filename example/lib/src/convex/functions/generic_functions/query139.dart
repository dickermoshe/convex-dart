// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query139Response> query139(Query139Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query139',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query139Response> query139Stream(Query139Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query139',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query139Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on777046 in args.i.entries)
          on777046.key: encodeValue(
            encodeValue({
              'a': encodeValue(
                on777046.value.a
                    .map((on442712) => encodeValue(on442712))
                    .toIList(),
              ),
            }),
          ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query139Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on736540) => (
      i: (on736540['i'] as IMap<String, dynamic>).map(
        (on981343, on165662) => MapEntry(
          on981343,
          (on165662 as IMap<String, dynamic>).then(
            (on778297) => (
              a: (on778297['a'] as IList<dynamic>)
                  .map((on875525) => (on875525 as dynamic))
                  .toIList(),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query139Args = ({IMap<String, ({IList<dynamic> a})> i});
typedef Query139Response = ({IMap<String, ({IList<dynamic> a})> i});
