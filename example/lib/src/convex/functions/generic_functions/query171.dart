// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query171Response> query171(Query171Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query171',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query171Response> query171Stream(Query171Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query171',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query171Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'a': encodeValue(args.i.a),
        if (args.i.b.isDefined) 'b': encodeValue(args.i.b.asDefined().value),
        'c': encodeValue(
          args.i.c.map((on289632) => encodeValue(on289632)).toIList(),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query171Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on417026) => (
      i: (on417026['i'] as IMap<String, dynamic>).then(
        (on184961) => (
          a: (on184961['a'] as String),
          b: on184961.containsKey('b')
              ? Defined<double>((on184961['b'] as double))
              : Undefined<double>(),
          c: (on184961['c'] as IList<dynamic>)
              .map((on856158) => (on856158 as bool))
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query171Args = ({({String a, Optional<double> b, IList<bool> c}) i});
typedef Query171Response = ({
  ({String a, Optional<double> b, IList<bool> c}) i,
});
