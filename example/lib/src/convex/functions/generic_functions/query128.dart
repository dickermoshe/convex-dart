// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query128Response> query128(Query128Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query128',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query128Response> query128Stream(Query128Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query128',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
ConvexArgs serialize(Query128Args args) {
  return encodeArgs({
    'i': encodeValue({
      'triggers': encodeValue(
        args.i.triggers
            .map(
              (_v0) => encodeValue(
                _v0.split(
                  (_v1) => encodeValue({
                    'cron': encodeValue(_v1.cron),
                    'type': encodeValue(_v1.type),
                  }),
                  (_v2) => encodeValue({
                    'type': encodeValue(_v2.type),
                    'url': encodeValue(_v2.url),
                  }),
                  (_v3) => encodeValue({
                    'eventType': encodeValue(_v3.eventType),
                    'type': encodeValue(_v3.type),
                  }),
                ),
              ),
            )
            .toIList(),
      ),
    }),
  });
}

@pragma("vm:prefer-inline")
Query128Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          triggers: (_v1['triggers'] as IList<dynamic>)
              .map(
                (_v2) =>
                    Union3<
                      ({String cron, $schedule type}),
                      ({$webhook type, String url}),
                      ({String eventType, $event type})
                    >(() {
                      try {
                        return (_v2 as IMap<String, dynamic>).then(
                          (_v3) => (
                            cron: (_v3['cron'] as String),
                            type: $schedule.validate(_v3['type']),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (_v2 as IMap<String, dynamic>).then(
                          (_v4) => (
                            type: $webhook.validate(_v4['type']),
                            url: (_v4['url'] as String),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (_v2 as IMap<String, dynamic>).then(
                          (_v5) => (
                            eventType: (_v5['eventType'] as String),
                            type: $event.validate(_v5['type']),
                          ),
                        );
                      } catch (e) {}

                      throw Exception(
                        (_v2.toString() ?? "null") +
                            r" cannot be deserialized into a Union3<({String cron,$schedule type}), ({$webhook type,String url}), ({String eventType,$event type})>",
                      );
                    }()),
              )
              .toIList(),
        ),
      ),
    ),
  );
}

typedef Query128Args = ({
  ({
    IList<
      Union3<
        ({String cron, $schedule type}),
        ({$webhook type, String url}),
        ({String eventType, $event type})
      >
    >
    triggers,
  })
  i,
});
typedef Query128Response = ({
  ({
    IList<
      Union3<
        ({String cron, $schedule type}),
        ({$webhook type, String url}),
        ({String eventType, $event type})
      >
    >
    triggers,
  })
  i,
});
