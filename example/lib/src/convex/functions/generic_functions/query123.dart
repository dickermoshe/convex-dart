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
ConvexArgs serialize(Query123Args args) {
  return encodeArgs({
    'i': encodeValue(
      args.i.split(
        (_v0) => encodeValue({
          'content': encodeValue(_v0.content),
          if (_v0.formatting.isDefined)
            'formatting': encodeValue({
              'bold': encodeValue(_v0.formatting.asDefined().value.bold),
              'color': encodeValue(
                _v0.formatting.asDefined().value.color.value,
              ),
              'italic': encodeValue(_v0.formatting.asDefined().value.italic),
            }),
          'type': encodeValue(_v0.type),
        }),
        (_v1) => encodeValue({
          if (_v1.alt.isDefined) 'alt': encodeValue(_v1.alt.asDefined().value),
          'dimensions': encodeValue({
            'height': encodeValue(_v1.dimensions.height),
            'width': encodeValue(_v1.dimensions.width),
          }),
          'type': encodeValue(_v1.type),
          'url': encodeValue(_v1.url),
        }),
        (_v2) => encodeValue({
          'items': encodeValue(
            _v2.items.map((_v3) => encodeValue(_v3)).toIList(),
          ),
          'ordered': encodeValue(_v2.ordered),
          'type': encodeValue(_v2.type),
        }),
      ),
    ),
  });
}

@pragma("vm:prefer-inline")
Query123Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
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
              return (_v0['i'] as IMap<String, dynamic>).then(
                (_v1) => (
                  content: (_v1['content'] as String),
                  formatting: _v1.containsKey('formatting')
                      ? Defined<
                          ({bool bold, $red$blue$green color, bool italic})
                        >(
                          (_v1['formatting'] as IMap<String, dynamic>).then(
                            (_v2) => (
                              bold: (_v2['bold'] as bool),
                              color: $red$blue$green.fromValue(_v2['color']),
                              italic: (_v2['italic'] as bool),
                            ),
                          ),
                        )
                      : Undefined<
                          ({bool bold, $red$blue$green color, bool italic})
                        >(),
                  type: $text.validate(_v1['type']),
                ),
              );
            } catch (e) {}

            try {
              return (_v0['i'] as IMap<String, dynamic>).then(
                (_v3) => (
                  alt: _v3.containsKey('alt')
                      ? Defined<String>((_v3['alt'] as String))
                      : Undefined<String>(),
                  dimensions: (_v3['dimensions'] as IMap<String, dynamic>).then(
                    (_v4) => (
                      height: (_v4['height'] as double),
                      width: (_v4['width'] as double),
                    ),
                  ),
                  type: $image.validate(_v3['type']),
                  url: (_v3['url'] as String),
                ),
              );
            } catch (e) {}

            try {
              return (_v0['i'] as IMap<String, dynamic>).then(
                (_v5) => (
                  items: (_v5['items'] as IList<dynamic>)
                      .map((_v6) => (_v6 as String))
                      .toIList(),
                  ordered: (_v5['ordered'] as bool),
                  type: $list.validate(_v5['type']),
                ),
              );
            } catch (e) {}

            throw Exception(
              (_v0['i'].toString() ?? "null") +
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
