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
            for (final _v0 in args.i.api.endpoints.entries)
              _v0.key: encodeValue(
                encodeValue({
                  if (_v0.value.auth.isDefined)
                    'auth': encodeValue(_v0.value.auth.asDefined().value),
                  'method': encodeValue(_v0.value.method.value),
                  'params': encodeValue({
                    for (final _v1 in _v0.value.params.entries)
                      _v1.key: encodeValue(
                        encodeValue(
                          _v1.value.split(
                            (_v2) => encodeValue(_v2),
                            (_v3) => encodeValue(_v3),
                            (_v4) => encodeValue(_v4),
                          ),
                        ),
                      ),
                  }),
                  'path': encodeValue(_v0.value.path),
                  'response': encodeValue(_v0.value.response),
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
            for (final _v5 in args.i.database.tables.entries)
              _v5.key: encodeValue(
                encodeValue({
                  'indexes': encodeValue(
                    _v5.value.indexes
                        .map(
                          (_v6) => encodeValue({
                            'fields': encodeValue(
                              _v6.fields
                                  .map((_v7) => encodeValue(_v7))
                                  .toIList(),
                            ),
                            'name': encodeValue(_v6.name),
                            'unique': encodeValue(_v6.unique),
                          }),
                        )
                        .toIList(),
                  ),
                  'schema': encodeValue({
                    for (final _v8 in _v5.value.schema.entries)
                      _v8.key: encodeValue(encodeValue(_v8.value.value)),
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
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          api: (_v1['api'] as IMap<String, dynamic>).then(
            (_v2) => (
              endpoints: (_v2['endpoints'] as IMap<String, dynamic>).map(
                (_v3, _v4) => MapEntry(
                  _v3,
                  (_v4 as IMap<String, dynamic>).then(
                    (_v5) => (
                      auth: _v5.containsKey('auth')
                          ? Defined<bool>((_v5['auth'] as bool))
                          : Undefined<bool>(),
                      method: $get$post$put$delete.fromValue(_v5['method']),
                      params: (_v5['params'] as IMap<String, dynamic>).map(
                        (_v6, _v7) => MapEntry(
                          _v6,
                          Union3<String, double, bool>(() {
                            try {
                              return (_v7 as String);
                            } catch (e) {}

                            try {
                              return (_v7 as double);
                            } catch (e) {}

                            try {
                              return (_v7 as bool);
                            } catch (e) {}

                            throw Exception(
                              (_v7.toString() ?? "null") +
                                  r" cannot be deserialized into a Union3<String, double, bool>",
                            );
                          }()),
                        ),
                      ),
                      path: (_v5['path'] as String),
                      response: (_v5['response'] as dynamic),
                    ),
                  ),
                ),
              ),
              rateLimit: (_v2['rateLimit'] as IMap<String, dynamic>).then(
                (_v8) => (
                  requests: (_v8['requests'] as double),
                  window: $minute$hour$day.fromValue(_v8['window']),
                ),
              ),
            ),
          ),
          database: (_v1['database'] as IMap<String, dynamic>).then(
            (_v9) => (
              tables: (_v9['tables'] as IMap<String, dynamic>).map(
                (_v10, _v11) => MapEntry(
                  _v10,
                  (_v11 as IMap<String, dynamic>).then(
                    (_v12) => (
                      indexes: (_v12['indexes'] as IList<dynamic>)
                          .map(
                            (_v13) => (_v13 as IMap<String, dynamic>).then(
                              (_v14) => (
                                fields: (_v14['fields'] as IList<dynamic>)
                                    .map((_v15) => (_v15 as String))
                                    .toIList(),
                                name: (_v14['name'] as String),
                                unique: (_v14['unique'] as bool),
                              ),
                            ),
                          )
                          .toIList(),
                      schema: (_v12['schema'] as IMap<String, dynamic>).map(
                        (_v16, _v17) => MapEntry(
                          _v16,
                          $string$number$boolean$date.fromValue(_v17),
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
