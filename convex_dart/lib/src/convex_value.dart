import 'dart:typed_data';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';

typedef ConvexArgs = Map<String, ConvexValue>;

sealed class ConvexValue {
  const ConvexValue();

  const factory ConvexValue.null_() = ConvexValueNull;
  const factory ConvexValue.int64(int value) = ConvexValueInt64;
  const factory ConvexValue.float64(double value) = ConvexValueFloat64;
  const factory ConvexValue.boolean(bool value) = ConvexValueBoolean;
  const factory ConvexValue.string(String value) = ConvexValueString;
  const factory ConvexValue.bytes(Uint8List value) = ConvexValueBytes;
  const factory ConvexValue.array(IList<ConvexValue> value) = ConvexValueArray;
  const factory ConvexValue.object(IMap<String, ConvexValue> value) =
      ConvexValueObject;
}

class ConvexValueNull extends ConvexValue {
  const ConvexValueNull();
}

class ConvexValueInt64 extends ConvexValue {
  final int value;

  const ConvexValueInt64(this.value);
}

class ConvexValueFloat64 extends ConvexValue {
  final double value;

  const ConvexValueFloat64(this.value);
}

class ConvexValueBoolean extends ConvexValue {
  final bool value;

  const ConvexValueBoolean(this.value);
}

class ConvexValueString extends ConvexValue {
  final String value;

  const ConvexValueString(this.value);
}

class ConvexValueBytes extends ConvexValue {
  final Uint8List value;

  const ConvexValueBytes(this.value);
}

class ConvexValueArray extends ConvexValue {
  final IList<ConvexValue> value;

  const ConvexValueArray(this.value);
}

class ConvexValueObject extends ConvexValue {
  final IMap<String, ConvexValue> value;

  const ConvexValueObject(this.value);
}
