/// This library exports some internal classes that are used by the generated code.
/// This library is not intended for public use.
library;

export 'schema.dart';
export 'literal.dart';
export 'unions.dart';
export 'encode.dart';
export 'package:fast_immutable_collections/fast_immutable_collections.dart';

export 'rust/lib.dart' show BTreeMapStringValue;
export 'internal_convex_client.dart' show InternalConvexClient;
export 'optional.dart';
export './rust/value.dart' show Value;
export './rust/dart.dart' show hashmapToBtreemap, btreemapToHashmap;
export 'rust/value.dart' show Value_Object;
export 'bytes.dart' show Uint8ListWithEquality;
export 'package:convex_dart/src/rust/sync.dart' show WebSocketState;

extension Then<T> on T {
  R then<R>(R Function(T) then) {
    return then(this);
  }
}
