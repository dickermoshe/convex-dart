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
              (on910882) => encodeValue({
                'posts': encodeValue(
                  on910882.posts
                      .map(
                        (on585570) => encodeValue({
                          'content': encodeValue(
                            on585570.content.split(
                              (on333388) => encodeValue(on333388),
                              (on99840) => encodeValue({
                                'media': encodeValue(
                                  on99840.media
                                      .map((on845657) => encodeValue(on845657))
                                      .toIList(),
                                ),
                                'text': encodeValue(on99840.text),
                              }),
                            ),
                          ),
                          'id': encodeValue(on585570.id),
                          'likes': encodeValue(on585570.likes),
                          'tags': encodeValue(
                            on585570.tags
                                .map((on834667) => encodeValue(on834667))
                                .toIList(),
                          ),
                        }),
                      )
                      .toIList(),
                ),
                'user': encodeValue({
                  'preferences': encodeValue({
                    for (final on615995 in on910882.user.preferences.entries)
                      on615995.key: encodeValue(
                        encodeValue(
                          on615995.value.split(
                            (on809135) => encodeValue(on809135),
                            (on961300) => encodeValue(on961300),
                            (on200354) => encodeValue(on200354),
                          ),
                        ),
                      ),
                  }),
                  'profile': encodeValue({
                    if (on910882.user.profile.avatar.isDefined)
                      'avatar': encodeValue(
                        on910882.user.profile.avatar.asDefined().value,
                      ),
                    'name': encodeValue(on910882.user.profile.name),
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
    (on420234) => (
      i: (on420234['i'] as IList<dynamic>)
          .map(
            (on307353) => (on307353 as IMap<String, dynamic>).then(
              (on278291) => (
                posts: (on278291['posts'] as IList<dynamic>)
                    .map(
                      (on356554) => (on356554 as IMap<String, dynamic>).then(
                        (on470616) => (
                          content:
                              Union2<
                                String,
                                ({IList<String> media, String text})
                              >(() {
                                try {
                                  return (on470616['content'] as String);
                                } catch (e) {}

                                try {
                                  return (on470616['content']
                                          as IMap<String, dynamic>)
                                      .then(
                                        (on496850) => (
                                          media:
                                              (on496850['media']
                                                      as IList<dynamic>)
                                                  .map(
                                                    (on756620) =>
                                                        (on756620 as String),
                                                  )
                                                  .toIList(),
                                          text: (on496850['text'] as String),
                                        ),
                                      );
                                } catch (e) {}

                                throw Exception(
                                  (on470616['content'].toString() ?? "null") +
                                      r" cannot be deserialized into a Union2<String, ({IList<String> media,String text})>",
                                );
                              }()),
                          id: (on470616['id'] as String),
                          likes: (on470616['likes'] as double),
                          tags: (on470616['tags'] as IList<dynamic>)
                              .map((on898367) => (on898367 as String))
                              .toIList(),
                        ),
                      ),
                    )
                    .toIList(),
                user: (on278291['user'] as IMap<String, dynamic>).then(
                  (on90711) => (
                    preferences:
                        (on90711['preferences'] as IMap<String, dynamic>).map(
                          (on938481, on34699) => MapEntry(
                            on938481,
                            Union3<String, double, bool>(() {
                              try {
                                return (on34699 as String);
                              } catch (e) {}

                              try {
                                return (on34699 as double);
                              } catch (e) {}

                              try {
                                return (on34699 as bool);
                              } catch (e) {}

                              throw Exception(
                                (on34699.toString() ?? "null") +
                                    r" cannot be deserialized into a Union3<String, double, bool>",
                              );
                            }()),
                          ),
                        ),
                    profile: (on90711['profile'] as IMap<String, dynamic>).then(
                      (on501467) => (
                        avatar: on501467.containsKey('avatar')
                            ? Defined<String>((on501467['avatar'] as String))
                            : Undefined<String>(),
                        name: (on501467['name'] as String),
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
