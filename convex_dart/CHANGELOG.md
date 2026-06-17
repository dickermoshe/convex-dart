## 0.7.0-dev.1

- Add a logging option so that internal Convex logs will be logged to the platform-specific output.
- Add a callback to monitor the WebSocket state. 
- Generator files now use deterministic variable names. Regenerating won't trigger massive diffs.
- convex-rs 0.10.4 and convex-mobile 720a79a

## 0.6.0-dev.2

- Update Rust client to 0.10.2

## 0.6.0-dev.1

- Fix compilation issues with Flutter Web

## 0.5.0

- Fix many tls issues

## 0.4.0

- Improve enum serialization

## 0.3.0

- Use `convex` 0.9
- Remove `rustls` and `aws-lc-rs` dependencies

## 0.2.2

- Remove `rustls` and `aws-lc-rs` dependencies

## 0.2.1

- Use `locked_async` instead of `synchronized`
- Make `onUpdate` callback return `anyhow::Result<()>`

## 0.2.0

- Initial release
