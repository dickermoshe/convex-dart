// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query205Response> query205(Query205Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query205',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query205Response> query205Stream(Query205Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query205',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query205Args args) {
  return encodeArgs({
    if (args.i.isDefined)
      'i': encodeValue({
        for (final _v0 in args.i.asDefined().value.entries)
          _v0.key: encodeValue(encodeValue(_v0.value)),
      }),
  });
}

@pragma("vm:prefer-inline")
Query205Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: _v0.containsKey('i')
          ? Defined<IMap<String, String>>(
              (_v0['i'] as IMap<String, dynamic>).map(
                (_v1, _v2) => MapEntry(_v1, (_v2 as String)),
              ),
            )
          : Undefined<IMap<String, String>>(),
    ),
  );
}

typedef Query205Args = ({Optional<IMap<String, String>> i});
typedef Query205Response = ({Optional<IMap<String, String>> i});
