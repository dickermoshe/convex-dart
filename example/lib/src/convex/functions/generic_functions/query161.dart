// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query161Response> query161(Query161Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query161',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query161Response> query161Stream(Query161Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query161',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query161Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        if (args.i.a.isDefined) 'a': encodeValue(args.i.a.asDefined().value),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query161Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on179875) => (
      i: (on179875['i'] as IMap<String, dynamic>).then(
        (on894284) => (
          a: on894284.containsKey('a')
              ? Defined<String>((on894284['a'] as String))
              : Undefined<String>(),
        ),
      ),
    ),
  );
}

typedef Query161Args = ({({Optional<String> a}) i});
typedef Query161Response = ({({Optional<String> a}) i});
