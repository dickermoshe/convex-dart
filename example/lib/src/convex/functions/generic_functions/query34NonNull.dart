// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query34NonNullResponse> query34NonNull(Query34NonNullArgs args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query34NonNull',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query34NonNullResponse> query34NonNullStream(Query34NonNullArgs args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query34NonNull',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query34NonNullArgs args) {
  return encodeArgs({'i': encodeValue(args.i.value)});
}

@pragma("vm:prefer-inline")
Query34NonNullResponse deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (i: $blue$red.fromValue(_v0['i'])),
  );
}

typedef Query34NonNullArgs = ({$blue$red i});
typedef Query34NonNullResponse = ({$blue$red i});
