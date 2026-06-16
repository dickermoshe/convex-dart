// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query114Response> query114(Query114Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query114',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query114Response> query114Stream(Query114Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query114',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query114Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        if (args.i.email.isDefined)
          'email': encodeValue(args.i.email.asDefined().value),
        if (args.i.name.isDefined)
          'name': encodeValue(args.i.name.asDefined().value),
        'phone': encodeValue(args.i.phone),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query114Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on333301) => (
      i: (on333301['i'] as IMap<String, dynamic>).then(
        (on521306) => (
          email: on521306.containsKey('email')
              ? Defined<String>((on521306['email'] as String))
              : Undefined<String>(),
          name: on521306.containsKey('name')
              ? Defined<String>((on521306['name'] as String))
              : Undefined<String>(),
          phone: (on521306['phone'] as String?),
        ),
      ),
    ),
  );
}

typedef Query114Args = ({
  ({Optional<String> email, Optional<String> name, String? phone}) i,
});
typedef Query114Response = ({
  ({Optional<String> email, Optional<String> name, String? phone}) i,
});
