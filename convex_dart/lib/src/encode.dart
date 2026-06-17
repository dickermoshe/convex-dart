import 'dart:typed_data';

import 'package:convex_dart/src/convex_dart_for_generated_code.dart';

import 'convex_value.dart';

ConvexArgs encodeArgs(Map<String, ConvexValue> value) {
  return value;
}

ConvexValue encodeValue(dynamic value) {
  if (value is ConvexValue) {
    return value;
  }
  return switch (value) {
    null => const ConvexValue.null_(),
    BigInt i => ConvexValue.int64(i.toInt()),
    int i => ConvexValue.int64(i),
    double d => ConvexValue.float64(d),
    bool b => ConvexValue.boolean(b),
    String s => ConvexValue.string(s),
    ByteBuffer bytes => ConvexValue.bytes(bytes.asUint8List()),
    Uint8List bytes => ConvexValue.bytes(bytes),
    Uint8ListWithEquality bytes => ConvexValue.bytes(bytes.value),
    List<dynamic> list => ConvexValue.array(list.map(encodeValue).toIList()),
    IList<dynamic> list => ConvexValue.array(list.map(encodeValue).toIList()),
    Map<String, dynamic> map => ConvexValue.object(
      map.map((k, v) => MapEntry(k, encodeValue(v))).lock,
    ),
    IMap<String, dynamic> map => ConvexValue.object(
      map.map((k, v) => MapEntry(k, encodeValue(v))),
    ),
    TableId id => ConvexValue.string(id.name),
    Literal literal => switch (literal.value) {
      String s => ConvexValue.string(s),
      int i => ConvexValue.int64(i),
      double d => ConvexValue.float64(d),
      bool b => ConvexValue.boolean(b),
      _ => throw UnimplementedError("Unsupported literal type: $literal"),
    },
    _ => throw UnimplementedError(
      "Unsupported value type: $value, type: ${value.runtimeType}",
    ),
  };
}

dynamic decodeValue(ConvexValue value) {
  return switch (value) {
    ConvexValueNull() => null,
    ConvexValueInt64(:final value) => value,
    ConvexValueFloat64(:final value) => value,
    ConvexValueBoolean(:final value) => value,
    ConvexValueString(:final value) => value,
    ConvexValueBytes(:final value) => Uint8ListWithEquality(value),
    ConvexValueArray(:final value) => value.map(decodeValue).toIList(),
    ConvexValueObject(:final value) => value.map(
      (k, v) => MapEntry(k, decodeValue(v)),
    ),
  };
}
