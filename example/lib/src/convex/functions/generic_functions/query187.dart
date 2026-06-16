// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query187Response> query187(Query187Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query187',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query187Response> query187Stream(Query187Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query187',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query187Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        for (final on951316 in args.i.entries)
          on951316.key: encodeValue(
            encodeValue({
              for (final on679390 in on951316.value.entries)
                on679390.key: encodeValue(encodeValue(on679390.value)),
            }),
          ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query187Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on636205) => (
      i: (on636205['i'] as IMap<String, dynamic>).map(
        (on830009, on961622) => MapEntry(
          on830009,
          (on961622 as IMap<String, dynamic>).map(
            (on1717, on737106) => MapEntry(on1717, (on737106 as String)),
          ),
        ),
      ),
    ),
  );
}

typedef Query187Args = ({IMap<String, IMap<String, String>> i});
typedef Query187Response = ({IMap<String, IMap<String, String>> i});
