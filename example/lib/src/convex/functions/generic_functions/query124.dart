// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query124Response> query124(Query124Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query124',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query124Response> query124Stream(Query124Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query124',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query124Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'api': encodeValue({
          'endpoints': encodeValue({
            for (final on425460 in args.i.api.endpoints.entries)
              on425460.key: encodeValue(
                encodeValue({
                  if (on425460.value.auth.isDefined)
                    'auth': encodeValue(on425460.value.auth.asDefined().value),
                  'method': encodeValue(on425460.value.method.value),
                  'params': encodeValue({
                    for (final on980943 in on425460.value.params.entries)
                      on980943.key: encodeValue(
                        encodeValue(
                          on980943.value.split(
                            (on633483) => encodeValue(on633483),
                            (on261676) => encodeValue(on261676),
                            (on57428) => encodeValue(on57428),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(on425460.value.path),
                  'response': encodeValue(on425460.value.response),
                }),
              ),
          }),
          'rateLimit': encodeValue({
            'requests': encodeValue(args.i.api.rateLimit.requests),
            'window': encodeValue(args.i.api.rateLimit.window.value),
          }),
        }),
        'database': encodeValue({
          'tables': encodeValue({
            for (final on630819 in args.i.database.tables.entries)
              on630819.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    on630819.value.indexes
                        .map(
                          (on309882) => encodeValue({
                            'fields': encodeValue(
                              on309882.fields
                                  .map((on805903) => encodeValue(on805903))
                                  .toIList(),
                            ),
                            'name': encodeValue(on309882.name),
                            'unique': encodeValue(on309882.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final on703805 in on630819.value.schema.entries)
                      on703805.key: encodeValue(
                        encodeValue(on703805.value.value),
                      ),
                  }),
                }),
              ),
          }),
        }),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query124Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on857322) => (
      i: (on857322['i'] as IMap<String, dynamic>).then(
        (on776232) => (
          api: (on776232['api'] as IMap<String, dynamic>).then(
            (on499070) => (
              endpoints: (on499070['endpoints'] as IMap<String, dynamic>).map(
                (on852002, on537169) => MapEntry(
                  on852002,
                  (on537169 as IMap<String, dynamic>).then(
                    (on363697) => (
                      auth: on363697.containsKey('auth')
                          ? Defined<bool>((on363697['auth'] as bool))
                          : Undefined<bool>(),
                      method: $get$post$put$delete.fromValue(
                        on363697['method'],
                      ),
                      params: (on363697['params'] as IMap<String, dynamic>).map(
                        (on810365, on921368) => MapEntry(
                          on810365,
                          Union3<String, double, bool>(() {
                            try {
                              return (on921368 as String);
                            } catch (e) {}

                            try {
                              return (on921368 as double);
                            } catch (e) {}

                            try {
                              return (on921368 as bool);
                            } catch (e) {}

                            throw Exception(
                              (on921368.toString() ?? "null") +
                                  r" cannot be deserialized into a Union3<String, double, bool>",
                            );
                          }()),
                        ),
                      ),
                      path: (on363697['path'] as String),
                      response: (on363697['response'] as dynamic),
                    ),
                  ),
                ),
              ),
              rateLimit: (on499070['rateLimit'] as IMap<String, dynamic>).then(
                (on594771) => (
                  requests: (on594771['requests'] as double),
                  window: $minute$hour$day.fromValue(on594771['window']),
                ),
              ),
            ),
          ),
          database: (on776232['database'] as IMap<String, dynamic>).then(
            (on193828) => (
              tables: (on193828['tables'] as IMap<String, dynamic>).map(
                (on67591, on47089) => MapEntry(
                  on67591,
                  (on47089 as IMap<String, dynamic>).then(
                    (on205771) => (
                      indexes: (on205771['indexes'] as IList<dynamic>)
                          .map(
                            (
                              on261737,
                            ) => (on261737 as IMap<String, dynamic>).then(
                              (on722246) => (
                                fields: (on722246['fields'] as IList<dynamic>)
                                    .map((on246015) => (on246015 as String))
                                    .toIList(),
                                name: (on722246['name'] as String),
                                unique: (on722246['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (on205771['schema'] as IMap<String, dynamic>).map(
                        (on265939, on166213) => MapEntry(
                          on265939,
                          $string$number$boolean$date.fromValue(on166213),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

typedef Query124Args = ({
  ({
    ({
      IMap<
        String,
        ({
          Optional<bool> auth,
          $get$post$put$delete method,
          IMap<String, Union3<String, double, bool>> params,
          String path,
          dynamic response,
        })
      >
      endpoints,
      ({double requests, $minute$hour$day window}) rateLimit,
    })
    api,
    ({
      IMap<
        String,
        ({
          IList<({IList<String> fields, String name, bool unique})> indexes,
          IMap<String, $string$number$boolean$date> schema,
        })
      >
      tables,
    })
    database,
  })
  i,
});
typedef Query124Response = ({
  ({
    ({
      IMap<
        String,
        ({
          Optional<bool> auth,
          $get$post$put$delete method,
          IMap<String, Union3<String, double, bool>> params,
          String path,
          dynamic response,
        })
      >
      endpoints,
      ({double requests, $minute$hour$day window}) rateLimit,
    })
    api,
    ({
      IMap<
        String,
        ({
          IList<({IList<String> fields, String name, bool unique})> indexes,
          IMap<String, $string$number$boolean$date> schema,
        })
      >
      tables,
    })
    database,
  })
  i,
});
