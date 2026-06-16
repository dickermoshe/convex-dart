// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query121Response> query121(Query121Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query121',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query121Response> query121Stream(Query121Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query121',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query121Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i
            .map(
              (_v0) => encodeValue({
                'posts': encodeValue(
                  _v0.posts
                      .map(
                        (_v1) => encodeValue({
                          'content': encodeValue(
                            _v1.content.split(
                              (_v2) => encodeValue(_v2),
                              (_v3) => encodeValue({
                                'media': encodeValue(
                                  _v3.media
                                      .map((_v4) => encodeValue(_v4))
                                      .toIList(),
                                ),
                                'text': encodeValue(_v3.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(_v1.id),
                          'likes': encodeValue(_v1.likes),
                          'tags': encodeValue(
                            _v1.tags.map((_v5) => encodeValue(_v5)).toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final _v6 in _v0.user.preferences.entries)
                      _v6.key: encodeValue(
                        encodeValue(
                          _v6.value.split(
                            (_v7) => encodeValue(_v7),
                            (_v8) => encodeValue(_v8),
                            (_v9) => encodeValue(_v9),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (_v0.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        _v0.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(_v0.user.profile.name),
                  }),
                }),
              }),
            )
            .toIList(),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query121Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IList<dynamic>)
          .map(
            (_v1) => (_v1 as IMap<String, dynamic>).then(
              (_v2) => (
                posts: (_v2['posts'] as IList<dynamic>)
                    .map(
                      (_v3) => (_v3 as IMap<String, dynamic>).then(
                        (_v4) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(() {
                                try {
                                  return (_v4['content'] as String);
                                } catch (e) {}

                                try {
                                  return (_v4['content']
                                          as IMap<String, dynamic>)
                                      .then(
                                        (_v5) => (
                                          media:
                                              (_v5['media'] as IList<dynamic>)
                                                  .map((_v6) => (_v6 as String))
                                                  .toIList(),
                                          text: (_v5['text'] as String),
                                        ),
                                      );
                                } catch (e) {}

                                throw Exception(
                                  (_v4['content'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union2<String, ({IList<String> media,String text})>",
                                );
                              }()),
                          id: (_v4['id'] as String),
                          likes: (_v4['likes'] as double),
                          tags: (_v4['tags'] as IList<dynamic>)
                              .map((_v7) => (_v7 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (_v2['user'] as IMap<String, dynamic>).then(
                  (_v8) => (
                    preferences: (_v8['preferences'] as IMap<String, dynamic>).map(
                      (_v9, _v10) => MapEntry(
                        _v9,
                        Union3<String, double, bool>(() {
                          try {
                            return (_v10 as String);
                          } catch (e) {}

                          try {
                            return (_v10 as double);
                          } catch (e) {}

                          try {
                            return (_v10 as bool);
                          } catch (e) {}

                          throw Exception(
                            (_v10.toString() ?? "null") +
                                r" cannot be deserialized into a Union3<String, double, bool>",
                          );
                        }()),
                      ),
                    ),
                    profile: (_v8['profile'] as IMap<String, dynamic>).then(
                      (_v11) => (
                        avatar: _v11.containsKey('avatar')
                            ? Defined<String>((_v11['avatar'] as String))
                            : Undefined<String>(),
                        name: (_v11['name'] as String),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toIList(),
    ),
  );
}

typedef Query121Args = ({
  IList<
    ({
      IList<
        ({
          Union2<String, ({IList<String> media, String text})> content,
          String id,
          double likes,
          IList<String> tags,
        })
      >
      posts,
      ({
        IMap<String, Union3<String, double, bool>> preferences,
        ({Optional<String> avatar, String name}) profile,
      })
      user,
    })
  >
  i,
});
typedef Query121Response = ({
  IList<
    ({
      IList<
        ({
          Union2<String, ({IList<String> media, String text})> content,
          String id,
          double likes,
          IList<String> tags,
        })
      >
      posts,
      ({
        IMap<String, Union3<String, double, bool>> preferences,
        ({Optional<String> avatar, String name}) profile,
      })
      user,
    })
  >
  i,
});
