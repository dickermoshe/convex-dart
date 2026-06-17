// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query212Response> query212(Query212Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query212',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query212Response> query212Stream(Query212Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query212',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query212Args args) {
  return encodeArgs({
    'i': encodeValue({
      for (final _v0 in args.i.entries)
        _v0.key: encodeValue(
          encodeValue(_v0.value.map((_v1) => encodeValue(_v1)).toIList()),
        ),
    }),
  });
}

@pragma("vm:prefer-inline")
Query212Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).map(
        (_v1, _v2) => MapEntry(
          _v1,
          (_v2 as IList<dynamic>).map((_v3) => (_v3 as dynamic)).toIList(),
        ),
      ),
    ),
  );
}

typedef Query212Args = ({IMap<String, IList<dynamic>> i});
typedef Query212Response = ({IMap<String, IList<dynamic>> i});
