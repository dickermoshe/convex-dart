// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query19Response> query19(Query19Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query19',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query19Response> query19Stream(Query19Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query19',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query19Args args) {
  return encodeArgs({
    if (args.i.isDefined) 'i': encodeValue(args.i.asDefined().value),
  });
}

@pragma("vm:prefer-inline")
Query19Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: _v0.containsKey('i')
          ? Defined<dynamic>((_v0['i'] as dynamic))
          : Undefined<dynamic>(),
    ),
  );
}

typedef Query19Args = ({Optional<dynamic> i});
typedef Query19Response = ({Optional<dynamic> i});
