// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query181Response> query181(Query181Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query181',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query181Response> query181Stream(Query181Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query181',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query181Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'deeply': encodeValue({
          'nested': encodeValue({
            'value': encodeValue(args.i.deeply.nested.value),
          }),
        }),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query181Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on698380) => (
      i: (on698380['i'] as IMap<String, dynamic>).then(
        (on52) => (
          deeply: (on52['deeply'] as IMap<String, dynamic>).then(
            (on312024) => (
              nested: (on312024['nested'] as IMap<String, dynamic>).then(
                (on861475) => (value: (on861475['value'] as String)),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query181Args = ({({({({String value}) nested}) deeply}) i});
typedef Query181Response = ({({({({String value}) nested}) deeply}) i});
