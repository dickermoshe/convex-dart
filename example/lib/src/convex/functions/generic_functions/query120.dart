// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "../../schema.dart";
import "../../literals.dart";

Future<Query120Response> query120(Query120Args args) async {
  final serializedArgs = serialize(args);
  final response = await InternalConvexClient.instance.query(
    name: 'generic_functions:query120',
    args: serializedArgs,
  );
  final deserializedResponse = deserialize(response);
  return deserializedResponse;
}

Stream<Query120Response> query120Stream(Query120Args args) {
  final serializedArgs = serialize(args);
  return InternalConvexClient.instance.stream(
    name: 'generic_functions:query120',
    args: serializedArgs,
    decodeResult: deserialize,
  );
}

@pragma("vm:prefer-inline")
BTreeMapStringValue serialize(Query120Args args) {
  return hashmapToBtreemap(
    hashmap: {
      'i': encodeValue({
        'items': encodeValue(
          args.i.items
              .map(
                (on927679) => encodeValue({
                  'id': encodeValue(on927679.id),
                  'metadata': encodeValue({
                    for (final on164985 in on927679.metadata.entries)
                      on164985.key: encodeValue(encodeValue(on164985.value)),
                  }),
                  'name': encodeValue(on927679.name),
                  'price': encodeValue(on927679.price),
                  if (on927679.quantity.isDefined)
                    'quantity': encodeValue(
                      on927679.quantity.asDefined().value,
                    ),
                }),
              )
              .toIList(),
        ),
        'total': encodeValue(args.i.total),
      }),
    },
  );
}

@pragma("vm:prefer-inline")
Query120Response deserialize(Value map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (on143924) => (
      i: (on143924['i'] as IMap<String, dynamic>).then(
        (on642067) => (
          items: (on642067['items'] as IList<dynamic>)
              .map(
                (on292478) => (on292478 as IMap<String, dynamic>).then(
                  (on761021) => (
                    id: (on761021['id'] as String),
                    metadata: (on761021['metadata'] as IMap<String, dynamic>)
                        .map(
                          (on341667, on848431) =>
                              MapEntry(on341667, (on848431 as dynamic)),
                        ),
                    name: (on761021['name'] as String),
                    price: (on761021['price'] as double?),
                    quantity: on761021.containsKey('quantity')
                        ? Defined<double>((on761021['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (on642067['total'] as double),
        ),
      ),
    ),
  );
}

typedef Query120Args = ({
  ({
    IList<
      ({
        String id,
        IMap<String, dynamic> metadata,
        String name,
        double? price,
        Optional<double> quantity,
      })
    >
    items,
    double total,
  })
  i,
});
typedef Query120Response = ({
  ({
    IList<
      ({
        String id,
        IMap<String, dynamic> metadata,
        String name,
        double? price,
        Optional<double> quantity,
      })
    >
    items,
    double total,
  })
  i,
});
