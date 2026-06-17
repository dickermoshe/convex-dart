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
ConvexArgs serialize(Query120Args args) {
  return encodeArgs({
    'i': encodeValue({
      'items': encodeValue(
        args.i.items
            .map(
              (_v0) => encodeValue({
                'id': encodeValue(_v0.id),
                'metadata': encodeValue({
                  for (final _v1 in _v0.metadata.entries)
                    _v1.key: encodeValue(encodeValue(_v1.value)),
                }),
                'name': encodeValue(_v0.name),
                'price': encodeValue(_v0.price),
                if (_v0.quantity.isDefined)
                  'quantity': encodeValue(_v0.quantity.asDefined().value),
              }),
            )
            .toIList(),
      ),
      'total': encodeValue(args.i.total),
    }),
  });
}

@pragma("vm:prefer-inline")
Query120Response deserialize(ConvexValue map) {
  return (decodeValue(map) as IMap<String, dynamic>).then(
    (_v0) => (
      i: (_v0['i'] as IMap<String, dynamic>).then(
        (_v1) => (
          items: (_v1['items'] as IList<dynamic>)
              .map(
                (_v2) => (_v2 as IMap<String, dynamic>).then(
                  (_v3) => (
                    id: (_v3['id'] as String),
                    metadata: (_v3['metadata'] as IMap<String, dynamic>).map(
                      (_v4, _v5) => MapEntry(_v4, (_v5 as dynamic)),
                    ),
                    name: (_v3['name'] as String),
                    price: (_v3['price'] as double?),
                    quantity: _v3.containsKey('quantity')
                        ? Defined<double>((_v3['quantity'] as double))
                        : Undefined<double>(),
                  ),
                ),
              )
              .toIList(),
          total: (_v1['total'] as double),
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
