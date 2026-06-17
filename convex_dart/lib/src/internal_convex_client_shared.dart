import 'convex_value.dart';

abstract interface class InternalSubscriptionHandle {
  void cancel();
}

/// An exception thrown when a TypeScript ConvexError is thrown on the backend.
class ConvexError extends ConvexClientError {
  /// Custom data payload that was included with the error.
  final dynamic data;

  ConvexError.internal(super.message, this.data) : super.internal();

  @override
  String toString() {
    return 'ConvexError(message: $message, data: $data)';
  }
}

/// An exception thrown for any error that is not a TypeScript ConvexError.
class ConvexClientError implements Exception {
  /// The error message describing what went wrong.
  final String message;

  ConvexClientError.internal(this.message);

  @override
  String toString() {
    return 'ConvexClientError(message: $message)';
  }
}

sealed class InternalFunctionResult {
  const InternalFunctionResult();
}

class InternalFunctionResultValue extends InternalFunctionResult {
  final ConvexValue value;

  const InternalFunctionResultValue(this.value);
}

class InternalFunctionResultErrorMessage extends InternalFunctionResult {
  final String message;

  const InternalFunctionResultErrorMessage(this.message);
}

class InternalFunctionResultConvexError extends InternalFunctionResult {
  final String message;
  final ConvexValue data;

  const InternalFunctionResultConvexError(this.message, this.data);
}
