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
                (_v0) => encodeValue({
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
                  'type': encodeValue(_v0.type.value),
                }),
              )
              .toIList(),
        ),
        'triggers': encodeValue(
          args.i.triggers
              .map(
                (_v1) => encodeValue(
                  _v1.split(
                    (_v2) => encodeValue({
                      'cron': encodeValue(_v2.cron),
                      'type': encodeValue(_v2.type),
                    }),
                    (_v3) => encodeValue({
                      'type': encodeValue(_v3.type),
                      'url': encodeValue(_v3.url),
                    }),
                    (_v4) => encodeValue({
                      'eventType': encodeValue(_v4.eventType),
                      'type': encodeValue(_v4.type),
                    }),
                  ),
                ),
              )
              .toIList(),
        ),
        'variables': encodeValue({
          for (final _v5 in args.i.variables.entries)
            _v5.key: encodeValue(
              encodeValue(
                _v5.value.split(
                  (_v6) => encodeValue(_v6),
                  (_v7) => encodeValue(_v7),
                  (_v8) => encodeValue(_v8),
                  (_v9) => encodeValue(
                    _v9.map((_v10) => encodeValue(_v10)).toIList(),
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
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          steps: (_v1['steps'] as IList<dynamic>)
              .map(
                (_v2) => (_v2 as IMap<String, dynamic>).then(
                  (_v3) => (
                    error: _v3.containsKey('error')
                        ? Defined<
                            ({
                              String handler,
                              ({double count, double delay}) retry,
                            })
                          >(
                            (_v3['error'] as IMap<String, dynamic>).then(
                              (_v4) => (
                                handler: (_v4['handler'] as String),
                                retry: (_v4['retry'] as IMap<String, dynamic>)
                                    .then(
                                      (_v5) => (
                                        count: (_v5['count'] as double),
                                        delay: (_v5['delay'] as double),
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
                    type: $action$condition$loop.fromValue(_v3['type']),
                  ),
                ),
              )
              .toIList(),
          triggers: (_v1['triggers'] as IList<dynamic>)
              .map(
                (_v6) =>
                    Union3<
                      ({String cron, $schedule type}),
                      ({$webhook type, String url}),
                      ({String eventType, $event type})
                    >(() {
                      try {
                        return (_v6 as IMap<String, dynamic>).then(
                          (_v7) => (
                            cron: (_v7['cron'] as String),
                            type: $schedule.validate(_v7['type']),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (_v6 as IMap<String, dynamic>).then(
                          (_v8) => (
                            type: $webhook.validate(_v8['type']),
                            url: (_v8['url'] as String),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (_v6 as IMap<String, dynamic>).then(
                          (_v9) => (
                            eventType: (_v9['eventType'] as String),
                            type: $event.validate(_v9['type']),
                          ),
                        );
                      } catch (e) {}

                      throw Exception(
                        (_v6.toString() ?? "null") +
                            r" cannot be deserialized into a Union3<({String cron,$schedule type}), ({$webhook type,String url}), ({String eventType,$event type})>",
                      );
                    }()),
              )
              .toIList(),
          variables: (_v1['variables'] as IMap<String, dynamic>).map(
            (_v10, _v11) => MapEntry(
              _v10,
              Union4<String, double, bool, IList<dynamic>>(() {
                try {
                  return (_v11 as String);
                } catch (e) {}

                try {
                  return (_v11 as double);
                } catch (e) {}

                try {
                  return (_v11 as bool);
                } catch (e) {}

                try {
                  return (_v11 as IList<dynamic>)
                      .map((_v12) => (_v12 as dynamic))
                      .toIList();
                } catch (e) {}

                throw Exception(
                  (_v11.toString() ?? "null") +
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
