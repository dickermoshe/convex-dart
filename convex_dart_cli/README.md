# convex_dart_cli

Command-line tool for generating type-safe Dart client code from Convex backend schemas.

## Installation

Add `convex_dart_cli` to your `pubspec.yaml`:

```yaml
dev_dependencies:
  convex_dart_cli: ^0.2.0
```

Or install via the command line:

```bash
dart pub add dev:convex_dart_cli
```

## Usage

### Basic Usage

Generate Dart client code from your Convex backend:

```bash
dart run convex_dart_cli generate
```

### Advanced Usage

```bash
# Specify custom paths
dart run convex_dart_cli generate --js ./my-convex-project --output ./lib/src/api

# Production mode
dart run convex_dart_cli generate --prod
```

## Features

- **🔄 Auto-regeneration**: Monitors your Convex functions and regenerates Dart code automatically
- **⚡ Fast builds**: Incremental generation only rebuilds changed functions
- **🛠️ Development integration**: Runs `convex dev` in the background
- **🗂️ Structured API**: Generates hierarchical `api.<module>.<function>()` namespaces that mirror your Convex folder layout
- **📝 Helpful errors**: Provides detailed error messages and troubleshooting tips
- **🎯 Type validation**: Ensures all Convex types are supported before generation

## Integration

This CLI tool integrates seamlessly with the [`convex_dart`](../convex_dart/) package to provide a complete development experience for building Flutter apps with Convex backends.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.