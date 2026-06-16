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
BTreeMapStringValue serialize(Query128Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'triggers': encodeValue(
          args.i.triggers
              .map(
                (on356383) => encodeValue(
                  on356383.split(
                    (on732527) => encodeValue({
                      'cron': encodeValue(on732527.cron),
                      'type': encodeValue(on732527.type),
                    }),
                    (on311019) => encodeValue({
                      'type': encodeValue(on311019.type),
                      'url': encodeValue(on311019.url),
                    }),
                    (on604988) => encodeValue({
                      'eventType': encodeValue(on604988.eventType),
                      'type': encodeValue(on604988.type),
                    }),
                  ),
                ),
              )
              .toIList(),
        ),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query128Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on621063) => (
      i: (on621063['i'] as IMap<String, dynamic>).then(
        (on17037) => (
          triggers: (on17037['triggers'] as IList<dynamic>)
              .map(
                (on710557) =>
                    Union3<
                      ({String cron, $schedule type}),
                      ({$webhook type, String url}),
                      ({String eventType, $event type})
                    >(() {
                      try {
                        return (on710557 as IMap<String, dynamic>).then(
                          (on205656) => (
                            cron: (on205656['cron'] as String),
                            type: $schedule.validate(on205656['type']),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (on710557 as IMap<String, dynamic>).then(
                          (on869408) => (
                            type: $webhook.validate(on869408['type']),
                            url: (on869408['url'] as String),
                          ),
                        );
                      } catch (e) {}

                      try {
                        return (on710557 as IMap<String, dynamic>).then(
                          (on291593) => (
                            eventType: (on291593['eventType'] as String),
                            type: $event.validate(on291593['type']),
                          ),
                        );
                      } catch (e) {}

                      throw Exception(
                        (on710557.toString() ?? "null") +
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
