// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query131Response> query131(Query131Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query131',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query131Response> query131Stream(Query131Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query131',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query131Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'steps': encodeValue(
          args.i.steps
              .map(
                (on172562) => encodeValue({
                  if (on172562.error.isDefined)
                    'error': encodeValue({
                      'handler': encodeValue(
                        on172562.error.asDefined().value.handler,
                      ),
                      'retry': encodeValue({
                        'count': encodeValue(
                          on172562.error.asDefined().value.retry.count,
                        ),
                        'delay': encodeValue(
                          on172562.error.asDefined().value.retry.delay,
                        ),
                      }),
                    }),
                  'type': encodeValue(on172562.type.value),
                }),
              )
              .toIList(),
        ),
        'triggers': encodeValue(
          args.i.triggers
              .map(
                (on617631) => encodeValue(
                  on617631.split(
                    (on26492) => encodeValue({
                      'cron': encodeValue(on26492.cron),
                      'type': encodeValue(on26492.type),
                    }),
                    (on240838) => encodeValue({
                      'type': encodeValue(on240838.type),
                      'url': encodeValue(on240838.url),
                    }),
                    (on38866) => encodeValue({
                      'eventType': encodeValue(on38866.eventType),
                      'type': encodeValue(on38866.type),
                    }),
                  ),
                ),
              )
              .toIList(),
        ),
        'variables': encodeValue({
          for (final on731288 in args.i.variables.entries)
            on731288.key: encodeValue(
              encodeValue(
                on731288.value.split(
                  (on120301) => encodeValue(on120301),
                  (on655733) => encodeValue(on655733),
                  (on628149) => encodeValue(on628149),
                  (on254402) => encodeValue(
                    on254402.map((on901274) => encodeValue(on901274)).toIList(),
                  ),
                ),
              ),
            ),
        }),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query131Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on594394) => (
      i: (on594394['i'] as IMap<String, dynamic>).then(
        (on28754) => (
          steps: (on28754['steps'] as IList<dynamic>)
              .map(
                (on464357) => (on464357 as IMap<String, dynamic>).then(
                  (on481534) => (
                    error: on481534.containsKey('error')
                        ? Defined<
                            ({
                              String handler,
                              ({double count, double delay}) retry,
                            })
                          >(
                            (on481534['error'] as IMap<String, dynamic>).then(
                              (on972221) => (
                                handler: (on972221['handler'] as String),
                                retry:
                                    (on972221['retry'] as IMap<String, dynamic>)
                                        .then(
                                          (on982908) => (
                                            count:
                                                (on982908['count'] as double),
                                            delay:
                                                (on982908['delay'] as double),
                                          ),
                                        ),
                              ),
                            ),
                          )
                        : Undefined<
                            ({
                              String handler,
                              ({double count, double delay}) retry,
                            })
                          >(),
                    type: $action$condition$loop.fromValue(on481534['type']),
                  ),
                ),
              )
              .toIList(),
          triggers: (on28754['triggers'] as IList<dynamic>)
              .map(
                (on741922) =>
                    Union3<
                      ({String cron, $schedule type}),
                      ({$webhook type, String url}),
                      ({String eventType, $event type})
                    >(() {
                      try {
                        return (on741922 as IMap<String, dynamic>).then(
                          (on312584) => (
                            cron: (on312584['cron'] as String),
                            type: $schedule.validate(on312584['type']),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (on741922 as IMap<String, dynamic>).then(
                          (on875764) => (
                            type: $webhook.validate(on875764['type']),
                            url: (on875764['url'] as String),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (on741922 as IMap<String, dynamic>).then(
                          (on724499) => (
                            eventType: (on724499['eventType'] as String),
                            type: $event.validate(on724499['type']),
                          ),
                        );
                      } catch (e) {}

                      throw Exception(
                        (on741922.toString() ?? "null") +
                            r" cannot be deserialized into a Union3<({String cron,$schedule type}), ({$webhook type,String url}), ({String eventType,$event type})>",
                      );
                    }()),
              )
              .toIList(),
          variables: (on28754['variables'] as IMap<String, dynamic>).map(
            (on65926, on890635) => MapEntry(
              on65926,
              Union4<String, double, bool, IList<dynamic>>(() {
                try {
                  return (on890635 as String);
                } catch (e) {}

                try {
                  return (on890635 as double);
                } catch (e) {}

                try {
                  return (on890635 as bool);
                } catch (e) {}

                try {
                  return (on890635 as IList<dynamic>)
                      .map((on441638) => (on441638 as dynamic))
                      .toIList();
                } catch (e) {}

                throw Exception(
                  (on890635.toString() ?? "null") +
                      r" cannot be deserialized into a Union4<String, double, bool, IList<dynamic>>",
                );
              }()),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query131Args = ({
  ({
    IList<
      ({
        Optional<({String handler, ({double count, double delay}) retry})>
        error,
        $action$condition$loop type,
      })
    >
    steps,
    IList<
      Union3<
        ({String cron, $schedule type}),
        ({$webhook type, String url}),
        ({String eventType, $event type})
      >
    >
    triggers,
    IMap<String, Union4<String, double, bool, IList<dynamic>>> variables,
  })
  i,
});
typedef Query131Response = ({
  ({
    IList<
      ({
        Optional<({String handler, ({double count, double delay}) retry})>
        error,
        $action$condition$loop type,
      })
    >
    steps,
    IList<
      Union3<
        ({String cron, $schedule type}),
        ({$webhook type, String url}),
        ({String eventType, $event type})
      >
    >
    triggers,
    IMap<String, Union4<String, double, bool, IList<dynamic>>> variables,
  })
  i,
});
