// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query130Response> query130(Query130Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query130',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query130Response> query130Stream(Query130Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query130',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query130Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'steps': encodeValue(
          args.i.steps
              .map(
                (on189052) => encodeValue({
                  'config': encodeValue({
                    for (final on781786 in on189052.config.entries)
                      on781786.key: encodeValue(encodeValue(on781786.value)),
                  }),
                  'id': encodeValue(on189052.id),
                  'name': encodeValue(on189052.name),
                  if (on189052.next.isDefined)
                    'next': encodeValue(on189052.next.asDefined().value),
                }),
              )
              .toIList(),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query130Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on137679) => (
      i: (on137679['i'] as IMap<String, dynamic>).then(
        (on617691) => (
          steps: (on617691['steps'] as IList<dynamic>)
              .map(
                (on203012) => (on203012 as IMap<String, dynamic>).then(
                  (on822) => (
                    config: (on822['config'] as IMap<String, dynamic>).map(
                      (on891319, on608957) =>
                          MapEntry(on891319, (on608957 as dynamic)),
                    ),
                    id: (on822['id'] as String),
                    name: (on822['name'] as String),
                    next: on822.containsKey('next')
                        ? Defined<String>((on822['next'] as String))
                        : Undefined<String>(),
                  ),
                ),
              )
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query130Args = ({
  ({
    IList<
      ({
        IMap<String, dynamic> config,
        String id,
        String name,
        Optional<String> next,
      })
    >
    steps,
  })
  i,
});
typedef Query130Response = ({
  ({
    IList<
      ({
        IMap<String, dynamic> config,
        String id,
        String name,
        Optional<String> next,
      })
    >
    steps,
  })
  i,
});
