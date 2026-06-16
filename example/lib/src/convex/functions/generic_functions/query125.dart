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
                  (_v0) => encodeValue({
                    'config': encodeValue({
                      for (final _v1 in _v0.config.entries)
                        _v1.key: encodeValue(encodeValue(_v1.value)),
                    }),
                    if (_v0.error.isDefined)
                      'error': encodeValue({
                        'handler': encodeValue(
                          _v0.error.asDefined().value.handler,
                        ),
                        'retry': encodeValue({
                          'count': encodeValue(
                            _v0.error.asDefined().value.retry.count,
                          ),
                          'delay': encodeValue(
                            _v0.error.asDefined().value.retry.delay,
                          ),
                        }),
                      }),
                    'id': encodeValue(_v0.id),
                    'name': encodeValue(_v0.name),
                    if (_v0.next.isDefined)
                      'next': encodeValue(_v0.next.asDefined().value),
                    'type': encodeValue(_v0.type.value),
                  }),
                )
                .toIList(),
          ),
          'triggers': encodeValue(
            args.i.workflow.triggers
                .map(
                  (_v2) => encodeValue(
                    _v2.split(
                      (_v3) => encodeValue({
                        'cron': encodeValue(_v3.cron),
                        'type': encodeValue(_v3.type),
                      }),
                      (_v4) => encodeValue({
                        'type': encodeValue(_v4.type),
                        'url': encodeValue(_v4.url),
                      }),
                      (_v5) => encodeValue({
                        'eventType': encodeValue(_v5.eventType),
                        'type': encodeValue(_v5.type),
                      }),
                    ),
                  ),
                )
                .toIList(),
          ),
          'variables': encodeValue({
            for (final _v6 in args.i.workflow.variables.entries)
              _v6.key: encodeValue(
                encodeValue(
                  _v6.value.split(
                    (_v7) => encodeValue(_v7),
                    (_v8) => encodeValue(_v8),
                    (_v9) => encodeValue(_v9),
                    (_v10) => encodeValue(
                      _v10.map((_v11) => encodeValue(_v11)).toIList(),
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
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          workflow: (_v1['workflow'] as IMap<String, dynamic>).then(
            (_v2) => (
              steps: (_v2['steps'] as IList<dynamic>)
                  .map(
                    (_v3) => (_v3 as IMap<String, dynamic>).then(
                      (_v4) => (
                        config: (_v4['config'] as IMap<String, dynamic>).map(
                          (_v5, _v6) => MapEntry(_v5, (_v6 as dynamic)),
                        ),
                        error: _v4.containsKey('error')
                            ? Defined<
                                ({
                                  String handler,
                                  ({double count, double delay}) retry,
                                })
                              >(
                                (_v4['error'] as IMap<String, dynamic>).then(
                                  (_v7) => (
                                    handler: (_v7['handler'] as String),
                                    retry:
                                        (_v7['retry'] as IMap<String, dynamic>)
                                            .then(
                                              (_v8) => (
                                                count: (_v8['count'] as double),
                                                delay: (_v8['delay'] as double),
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
                        id: (_v4['id'] as String),
                        name: (_v4['name'] as String),
                        next: _v4.containsKey('next')
                            ? Defined<String>((_v4['next'] as String))
                            : Undefined<String>(),
                        type: $action$condition$loop.fromValue(_v4['type']),
                      ),
                    ),
                  )
                  .toIList(),
              triggers: (_v2['triggers'] as IList<dynamic>)
                  .map(
                    (_v9) =>
                        Union3<
                          ({String cron, $schedule type}),
                          ({$webhook type, String url}),
                          ({String eventType, $event type})
                        >(() {
                          try {
                            return (_v9 as IMap<String, dynamic>).then(
                              (_v10) => (
                                cron: (_v10['cron'] as String),
                                type: $schedule.validate(_v10['type']),
                              ),
                            );
                          } catch (e) {}

                          try {
                            return (_v9 as IMap<String, dynamic>).then(
                              (_v11) => (
                                type: $webhook.validate(_v11['type']),
                                url: (_v11['url'] as String),
                              ),
                            );
                          } catch (e) {}

                          try {
                            return (_v9 as IMap<String, dynamic>).then(
                              (_v12) => (
                                eventType: (_v12['eventType'] as String),
                                type: $event.validate(_v12['type']),
                              ),
                            );
                          } catch (e) {}

                          throw Exception(
                            (_v9.toString() ?? "null") +
                                r" cannot be deserialized into a Union3<({String cron,$schedule type}), ({$webhook type,String url}), ({String eventType,$event type})>",
                          );
                        }()),
                  )
                  .toIList(),
              variables: (_v2['variables'] as IMap<String, dynamic>).map(
                (_v13, _v14) => MapEntry(
                  _v13,
                  Union4<String, double, bool, IList<dynamic>>(() {
                    try {
                      return (_v14 as String);
                    } catch (e) {}

                    try {
                      return (_v14 as double);
                    } catch (e) {}

                    try {
                      return (_v14 as bool);
                    } catch (e) {}

                    try {
                      return (_v14 as IList<dynamic>)
                          .map((_v15) => (_v15 as dynamic))
                          .toIList();
                    } catch (e) {}

                    throw Exception(
                      (_v14.toString() ?? "null") +
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
