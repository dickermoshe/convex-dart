# Convex Dart Example

This is the repo's working Flutter example for `convex_dart`.

It includes a small Convex backend, the generated Dart client, a minimal Flutter app, and integration tests used by CI. The example is mainly here to show what generated code looks like in a real project and to catch regressions across supported platforms.

## Setup

Run these from `example/`:

```bash
npm install
flutter pub get
```

If the Convex backend has changed, regenerate the Dart client:

```bash
dart run convex_dart_cli generate --once --public-serialize
```

(`--public-serialize` is used for tests that need public generated serialization helpers.)

## Run the App

```bash
flutter run
```

The app initializes the generated `ConvexClient` and makes a simple generated function call. It is intentionally small; the richer coverage is in `integration_test/`.

## Flutter Web

Web builds use the Convex JavaScript browser bundle through a script tag. Keep
this script before `flutter_bootstrap.js` in `web/index.html`:

```html
<script src="https://unpkg.com/convex@1.41.0/dist/browser.bundle.js"></script>
```

## Run Tests

The integration test entrypoint is:

```bash
flutter test integration_test/test_all.dart
```

Web integration tests use Flutter Drive because `flutter test -d chrome` does
not support `integration_test` targets:

```bash
npx convex dev --typecheck=disable --tail-logs=disable
chromedriver --port=4444
flutter drive -d chrome --driver=test_driver/integration_test.dart --target=integration_test/web_smoke_test.dart
```

On machines without `chromedriver` on `PATH`, install a matching driver with
Chrome for Testing tooling, then run that binary on port `4444`.
