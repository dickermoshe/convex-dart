// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query125Response> query125(Query125Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query125',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query125Response> query125Stream(Query125Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query125',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query125Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'workflow': encodeValue({
          'steps': encodeValue(
            args.i.workflow.steps
                .map(
                  (on598478) => encodeValue({
                    'config': encodeValue({
                      for (final on154574 in on598478.config.entries)
                        on154574.key: encodeValue(encodeValue(on154574.value)),
                    }),
                    if (on598478.error.isDefined)
                      'error': encodeValue({
                        'handler': encodeValue(
                          on598478.error.asDefined().value.handler,
                        ),
                        'retry': encodeValue({
                          'count': encodeValue(
                            on598478.error.asDefined().value.retry.count,
                          ),
                          'delay': encodeValue(
                            on598478.error.asDefined().value.retry.delay,
                          ),
                        }),
                      }),
                    'id': encodeValue(on598478.id),
                    'name': encodeValue(on598478.name),
                    if (on598478.next.isDefined)
                      'next': encodeValue(on598478.next.asDefined().value),
                    'type': encodeValue(on598478.type.value),
                  }),
                )
                .toIList(),
          ),
          'triggers': encodeValue(
            args.i.workflow.triggers
                .map(
                  (on870384) => encodeValue(
                    on870384.split(
                      (on355981) => encodeValue({
                        'cron': encodeValue(on355981.cron),
                        'type': encodeValue(on355981.type),
                      }),
                      (on692486) => encodeValue({
                        'type': encodeValue(on692486.type),
                        'url': encodeValue(on692486.url),
                      }),
                      (on488078) => encodeValue({
                        'eventType': encodeValue(on488078.eventType),
                        'type': encodeValue(on488078.type),
                      }),
                    ),
                  ),
                )
                .toIList(),
          ),
          'variables': encodeValue({
            for (final on780072 in args.i.workflow.variables.entries)
              on780072.key: encodeValue(
                encodeValue(
                  on780072.value.split(
                    (on462553) => encodeValue(on462553),
                    (on469125) => encodeValue(on469125),
                    (on837006) => encodeValue(on837006),
                    (on117874) => encodeValue(
                      on117874
                          .map((on308517) => encodeValue(on308517))
                          .toIList(),
                    ),
                  ),
                ),
              ),
          }),
        }),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query125Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on488710) => (
      i: (on488710['i'] as IMap<String, dynamic>).then(
        (on15530) => (
          workflow: (on15530['workflow'] as IMap<String, dynamic>).then(
            (on352734) => (
              steps: (on352734['steps'] as IList<dynamic>)
                  .map(
                    (on43818) => (on43818 as IMap<String, dynamic>).then(
                      (on546399) => (
                        config: (on546399['config'] as IMap<String, dynamic>)
                            .map(
                              (on550862, on325539) =>
                                  MapEntry(on550862, (on325539 as dynamic)),
                            ),
                        error: on546399.containsKey('error')
                            ? Defined<
                                ({
                                  String handler,
                                  ({double count, double delay}) retry,
                                })
                              >(
                                (on546399['error'] as IMap<String, dynamic>)
                                    .then(
                                      (on145666) => (
                                        handler:
                                            (on145666['handler'] as String),
                                        retry:
                                            (on145666['retry']
                                                    as IMap<String, dynamic>)
                                                .then(
                                                  (on932720) => (
                                                    count:
                                                        (on932720['count']
                                                            as double),
                                                    delay:
                                                        (on932720['delay']
                                                            as double),
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
                        id: (on546399['id'] as String),
                        name: (on546399['name'] as String),
                        next: on546399.containsKey('next')
                            ? Defined<String>((on546399['next'] as String))
                            : Undefined<String>(),
                        type: $action$condition$loop.fromValue(
                          on546399['type'],
                        ),
                      ),
                    ),
                  )
                  .toIList(),
              triggers: (on352734['triggers'] as IList<dynamic>)
                  .map(
                    (on12339) =>
                        Union3<
                          ({String cron, $schedule type}),
                          ({$webhook type, String url}),
                          ({String eventType, $event type})
                        >(() {
                          try {
                            return (on12339 as IMap<String, dynamic>).then(
                              (on615261) => (
                                cron: (on615261['cron'] as String),
                                type: $schedule.validate(on615261['type']),
                              ),
                            );
                          } catch (e) {}

                          try {
                            return (on12339 as IMap<String, dynamic>).then(
                              (on335375) => (
                                type: $webhook.validate(on335375['type']),
                                url: (on335375['url'] as String),
                              ),
                            );
                          } catch (e) {}

                          try {
                            return (on12339 as IMap<String, dynamic>).then(
                              (on956726) => (
                                eventType: (on956726['eventType'] as String),
                                type: $event.validate(on956726['type']),
                              ),
                            );
                          } catch (e) {}

                          throw Exception(
                            (on12339.toString() ?? "null") +
                                r" cannot be deserialized into a Union3<({String cron,$schedule type}), ({$webhook type,String url}), ({String eventType,$event type})>",
                          );
                        }()),
                  )
                  .toIList(),
              variables: (on352734['variables'] as IMap<String, dynamic>).map(
                (on126631, on787694) => MapEntry(
                  on126631,
                  Union4<String, double, bool, IList<dynamic>>(() {
                    try {
                      return (on787694 as String);
                    } catch (e) {}

                    try {
                      return (on787694 as double);
                    } catch (e) {}

                    try {
                      return (on787694 as bool);
                    } catch (e) {}

                    try {
                      return (on787694 as IList<dynamic>)
                          .map((on811391) => (on811391 as dynamic))
                          .toIList();
                    } catch (e) {}

                    throw Exception(
                      (on787694.toString() ?? "null") +
                          r" cannot be deserialized into a Union4<String, double, bool, IList<dynamic>>",
                    );
                  }()),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query125Args = ({
  ({
    ({
      IList<
        ({
          IMap<String, dynamic> config,
          Optional<({String handler, ({double count, double delay}) retry})>
          error,
          String id,
          String name,
          Optional<String> next,
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
    workflow,
  })
  i,
});
typedef Query125Response = ({
  ({
    ({
      IList<
        ({
          IMap<String, dynamic> config,
          Optional<({String handler, ({double count, double delay}) retry})>
          error,
          String id,
          String name,
          Optional<String> next,
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
    workflow,
  })
  i,
});
