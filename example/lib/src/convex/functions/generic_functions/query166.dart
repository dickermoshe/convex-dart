// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query166Response> query166(Query166Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query166',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query166Response> query166Stream(Query166Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query166',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query166Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'a': encodeValue({'b': encodeValue(args.i.a.b)}),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query166Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on752905) => (
      i: (on752905['i'] as IMap<String, dynamic>).then(
        (on783411) => (
          a: (on783411['a'] as IMap<String, dynamic>).then(
            (on932109) => (b: (on932109['b'] as bool)),
          ),
        ),
      ),
    ),
  );
}

typedef Query166Args = ({({({bool b}) a}) i});
typedef Query166Response = ({({({bool b}) a}) i});
