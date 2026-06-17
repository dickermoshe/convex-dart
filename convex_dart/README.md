# convex_dart

Flutter bindings for [Convex](https://convex.dev), with generated Dart code for your Convex functions.

The generated client is the main thing you use day to day: it gives you typed function calls, typed return values, real-time query streams, and Dart models for Convex ids, objects, literals, optionals, unions, arrays, and records.

## Packages

Most apps use two packages together:

```bash
dart pub add convex_dart dev:convex_dart_cli
```

- `convex_dart` is the runtime package used by your Flutter app.
- `convex_dart_cli` reads your Convex function spec and writes the Dart client files into your project.

## Project Layout

The default layout assumes your Flutter app and Convex backend live in the same project:

```text
my_app/
├── pubspec.yaml
├── lib/
│   ├── main.dart
│   └── src/
│       └── convex/          # generated Dart client
│           ├── client.dart
│           ├── schema.dart
│           ├── literals.dart
│           └── functions/
├── package.json
├── tsconfig.json
└── convex/                  # Convex backend
    ├── schema.ts
    └── tasks.ts
```

If your backend is somewhere else, you can pass explicit paths.
Run `dart run convex_dart_cli generate --help` for more information.


## Generate the Client

Run the generator from your app root:

```bash
dart run convex_dart_cli generate
```

By default this generates once, then keeps watching your Convex directory for `.ts` and `.js` changes. Use `--once` in scripts or CI:

```bash
dart run convex_dart_cli generate --once
```

To generate from a specific Convex deployment:

```bash
dart run convex_dart_cli generate --deployment prod --once
```

The generator shells out to `convex function-spec`, so your JS package manager needs to be able to run Convex. The default is `npx`; use `--js-package-manager pnpm`, `yarn`, or `bun` if needed.

## Initialize Convex

Import the generated `client.dart` and initialize the client before calling generated functions:

```dart
import 'package:flutter/widgets.dart';
import 'package:your_app/src/convex/client.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConvexClient.init(
    logging: true,
    onStateChange: (state) {
      print('WebSocket state changed: $state');
    },
  );

  runApp(const MyApp());
}
```

`ConvexClient.init` is generated with the deployment URL discovered from your Convex project.

## Use Generated Functions

Each Convex function gets a Dart file under `functions/`. Import the function you need and call it directly.

```dart
import 'package:convex_dart/convex_dart.dart';
import 'package:your_app/src/convex/functions/tasks/createTask.dart';
import 'package:your_app/src/convex/functions/tasks/getAllTasks.dart';

final created = await createTask((
  text: 'Ship the README',
  isCompleted: Optional.undefined(),
));

final tasks = await getAllTasks();
print(created.body);
print(tasks.body.first.id);
```

Generated responses are records with a `body` field. Generated args are records too, so Dart checks the field names and types at compile time.

Queries also get a stream helper:

```dart
StreamBuilder<GetAllTasksResponse>(
  stream: getAllTasksStream().distinct(),
  builder: (context, snapshot) {
    if (!snapshot.hasData) return const SizedBox.shrink();

    final tasks = snapshot.data!.body;
    return Text('${tasks.length} tasks');
  },
);
```

The stream updates when Convex pushes new query results. `.distinct()` is often useful in Flutter widgets to avoid rebuilding on duplicate events.

## Generated Types

Convex values map to regular Dart types where possible:

| Convex type | Dart type |
| --- | --- |
| `v.string()` | `String` |
| `v.number()` | `double` |
| `v.boolean()` | `bool` |
| `v.int64()` | `int` |
| `v.bytes()` | `Uint8ListWithEquality` |
| `v.id("tasks")` | `TasksId` |
| `v.array(T)` | `IList<T>` |
| `v.record(K, V)` | `IMap<K, V>` |
| `v.object({...})` | Generated record type |
| `v.literal("x")` | Generated literal class |
| `v.union(A, B)` | Generated union type |
| `v.optional(T)` | `Optional<T>` |
| `v.null()` | `void` for a bare return, or nullable/union shape where applicable |

`v.optional(T)` is represented as `Optional<T>` because Convex distinguishes `undefined` from `null`. If you want Dart's normal nullable style, prefer a Convex union with `null`:

```ts
args: { name: v.union(v.string(), v.null()) }
```

That generates a `String?`-style value on the Dart side instead of an `Optional<String>`.

## Errors

Backend `ConvexError`s are surfaced as `ConvexError`, including their data payload. Network, server, and client-side failures are surfaced as `ConvexClientError`.

```dart
try {
  await createTask((text: 'New task', isCompleted: Optional.undefined()));
} on ConvexError catch (e) {
  print('Convex error: ${e.message}');
  print(e.data);
} on ConvexClientError catch (e) {
  print('Client error: ${e.message}');
}
```

`ConvexError` extends `ConvexClientError`, so catch it first if you care about the distinction.

## Platform Notes

`convex_dart` uses the official Convex Rust client through Flutter Rust Bridge. Precompiled binaries are downloaded during build by default.

If you need to build from source, add `cargokit_options.yaml` at the root of your app:

```yaml
use_precompiled_binaries: false
```

Flutter Web is not officially supported.

## Example

See [`../example`](../example) for a working Flutter project with a Convex backend and generated client code.

## License

MIT. See [LICENSE](LICENSE).
