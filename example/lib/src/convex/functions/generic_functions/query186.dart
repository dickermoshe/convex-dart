// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query186Response> query186(Query186Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query186',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query186Response> query186Stream(Query186Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query186',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query186Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'permissions': encodeValue(
          args.i.permissions
              .map((on58328) => encodeValue(on58328.value))
              .toIList(),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query186Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on462408) => (
      i: (on462408['i'] as IMap<String, dynamic>).then(
        (on484279) => (
          permissions: (on484279['permissions'] as IList<dynamic>)
              .map((on695748) => $read$write$admin.fromValue(on695748))
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query186Args = ({({IList<$read$write$admin> permissions}) i});
typedef Query186Response = ({({IList<$read$write$admin> permissions}) i});
