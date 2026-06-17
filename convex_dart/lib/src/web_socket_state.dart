/// The state of the Convex WebSocket connection.
enum WebSocketState {
  /// The WebSocket is open and connected.
  connected,

  /// The WebSocket is closed and connecting/reconnecting.
  connecting,
}
