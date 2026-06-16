// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query123Response> query123(Query123Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query123',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query123Response> query123Stream(Query123Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query123',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query123Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue(
        args.i.split(
          (on706146) => encodeValue({
            'content': encodeValue(on706146.content),
            if (on706146.formatting.isDefined)
              'formatting': encodeValue({
                'bold': encodeValue(on706146.formatting.asDefined().value.bold),
                'color': encodeValue(
                  on706146.formatting.asDefined().value.color.value,
                ),
                'italic': encodeValue(
                  on706146.formatting.asDefined().value.italic,
                ),
              }),
            'type': encodeValue(on706146.type),
          }),
          (on316669) => encodeValue({
            if (on316669.alt.isDefined)
              'alt': encodeValue(on316669.alt.asDefined().value),
            'dimensions': encodeValue({
              'height': encodeValue(on316669.dimensions.height),
              'width': encodeValue(on316669.dimensions.width),
            }),
            'type': encodeValue(on316669.type),
            'url': encodeValue(on316669.url),
          }),
          (on562295) => encodeValue({
            'items': encodeValue(
              on562295.items.map((on520279) => encodeValue(on520279)).toIList(),
            ),
            'ordered': encodeValue(on562295.ordered),
            'type': encodeValue(on562295.type),
          }),
        ),
      ),
    },
  );
}

@pragma("vm:prefer-inline")
Query123Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on804211) => (
      i:
          Union3<
            ({
              String content,
              Optional<({bool bold, $red$blue$green color, bool italic})>
              formatting,
              $text type,
            }),
            ({
              Optional<String> alt,
              ({double height, double width}) dimensions,
              $image type,
              String url,
            }),
            ({IList<String> items, bool ordered, $list type})
          >(() {
            try {
              return (on804211['i'] as IMap<String, dynamic>).then(
                (on47733) => (
                  content: (on47733['content'] as String),
                  formatting: on47733.containsKey('formatting')
                      ? Defined<
                          ({bool bold, $red$blue$green color, bool italic})
                        >(
                          (on47733['formatting'] as IMap<String, dynamic>).then(
                            (on152110) => (
                              bold: (on152110['bold'] as bool),
                              color: $red$blue$green.fromValue(
                                on152110['color'],
                              ),
                              italic: (on152110['italic'] as bool),
                            ),
                          ),
                        )
                      : Undefined<
                          ({bool bold, $red$blue$green color, bool italic})
                        >(),
                  type: $text.validate(on47733['type']),
                ),
              );
            } catch (e) {}

            try {
              return (on804211['i'] as IMap<String, dynamic>).then(
                (on533561) => (
                  alt: on533561.containsKey('alt')
                      ? Defined<String>((on533561['alt'] as String))
                      : Undefined<String>(),
                  dimensions: (on533561['dimensions'] as IMap<String, dynamic>)
                      .then(
                        (on238717) => (
                          height: (on238717['height'] as double),
                          width: (on238717['width'] as double),
                        ),
                      ),
                  type: $image.validate(on533561['type']),
                  url: (on533561['url'] as String),
                ),
              );
            } catch (e) {}

            try {
              return (on804211['i'] as IMap<String, dynamic>).then(
                (on432729) => (
                  items: (on432729['items'] as IList<dynamic>)
                      .map((on149859) => (on149859 as String))
                      .toIList(),
                  ordered: (on432729['ordered'] as bool),
                  type: $list.validate(on432729['type']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (on804211['i'].toString() ?? "null") +
                  r" cannot be deserialized into a Union3<({String content,Optional<({bool bold,$red$blue$green color,bool italic})> formatting,$text type}), ({Optional<String> alt,({double height,double width}) dimensions,$image type,String url}), ({IList<String> items,bool ordered,$list type})>",
            );
          }()),
    ),
  );
}

typedef Query123Args = ({
  Union3<
    ({
      String content,
      Optional<({bool bold, $red$blue$green color, bool italic})> formatting,
      $text type,
    }),
    ({
      Optional<String> alt,
      ({double height, double width}) dimensions,
      $image type,
      String url,
    }),
    ({IList<String> items, bool ordered, $list type})
  >
  i,
});
typedef Query123Response = ({
  Union3<
    ({
      String content,
      Optional<({bool bold, $red$blue$green color, bool italic})> formatting,
      $text type,
    }),
    ({
      Optional<String> alt,
      ({double height, double width}) dimensions,
      $image type,
      String url,
    }),
    ({IList<String> items, bool ordered, $list type})
  >
  i,
});
