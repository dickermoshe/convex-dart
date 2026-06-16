import 'dart:async';
import 'dart:io';
import 'package:config/config.dart';
import 'dart:convert';
import 'package:path/path.dart' as path;
import 'package:convex_dart_cli/src/types.dart';
import 'package:cli_tools/cli_tools.dart';
import 'package:locked_async/locked_async.dart';

Process? devProcess;
StreamSubscription<ProcessSignal>? _sigintSubscription;

Future<void> killDevServer() async {
  final p = devProcess;
  if (p == null) return;

  if (Platform.isWindows) {
    await Process.run('taskkill', ['/PID', '${p.pid}', '/T', '/F']);
  } else {
    p.kill(ProcessSignal.sigterm);
  }

  try {
    await p.exitCode.timeout(
      const Duration(seconds: 5),
      onTimeout: () {
        p.kill(ProcessSignal.sigkill);
        return -1;
      },
    );
  } finally {
    if (identical(devProcess, p)) {
      devProcess = null;
    }
  }
}

Future<int> main(List<String> args) async {
  // Listen for `ctrl+c` to shutdown the `convex dev` process
  // if it is still running
  _sigintSubscription = ProcessSignal.sigint.watch().listen((_) async {
    print("Received `ctrl+c`, shutting down...");
    await _sigintSubscription?.cancel();
    await killDevServer();
    exit(130);
  });

  try {
    final commandRunner = BetterCommandRunner(
      'convex_dart_cli',
      'CLI for generating Dart Convex Client',
      globalOptions: [StandardGlobalOption.quiet, StandardGlobalOption.verbose],
    );
    commandRunner.addCommand(GenerateCommand(commandRunner));
    await commandRunner.run(args);
  } finally {
    // Kill the `convex dev` process if it is still running
    await killDevServer();
    await _sigintSubscription?.cancel();
  }
  return 0;
}

class GenerateCommand extends BetterCommand<CliOptions, void> {
  GenerateCommand(this.commandRunner) : super(options: CliOptions.values);
  final BetterCommandRunner commandRunner;

  @override
  String get name => 'generate';

  @override
  String get description => 'Generate the Dart Convex Client';

  Logger? _logger;
  Logger get logger {
    if (_logger != null) {
      return _logger!;
    }
    final LogLevel logLevel;
    if (commandRunner.globalConfiguration.value(StandardGlobalOption.verbose)) {
      logLevel = LogLevel.debug;
    } else if (commandRunner.globalConfiguration.value(
      StandardGlobalOption.quiet,
    )) {
      logLevel = LogLevel.error;
    } else {
      logLevel = LogLevel.info;
    }
    _logger = StdOutLogger(logLevel);
    return _logger!;
  }

  final LockedAsync _lockedTask = LockedAsync();

  /// Build the command which will watch the convex project and rebuild the backend
  /// when changes are made.
  (String, List<String>) _buildConvexDevCommand(
    Configuration<CliOptions> config,
  ) {
    var convexDevArgs = config.optionalValue(CliOptions.convexDevArgs);
    final prod = config.value(CliOptions.prod);
    if (prod && convexDevArgs?.contains("--prod") != true) {
      convexDevArgs = "$convexDevArgs --prod";
    }
    final jsPackageManager = config.value(CliOptions.jsPackageManager);
    return (
      jsPackageManager.executableRunCommand,
      ["convex", "dev", ?convexDevArgs],
    );
  }

  /// Build the command which will be ran to generate the function spec
  (String, List<String>) _buildConvexSpecCommand(
    Configuration<CliOptions> config,
  ) {
    var convexSpecArgs = config.optionalValue(CliOptions.convexSpecArgs);
    final prod = config.value(CliOptions.prod);
    if (prod) {
      if (convexSpecArgs == null) {
        convexSpecArgs = "--prod";
      } else if (!convexSpecArgs.contains("--prod")) {
        convexSpecArgs = "$convexSpecArgs --prod";
      }
    }
    final jsPackageManager = config.value(CliOptions.jsPackageManager);
    return (
      jsPackageManager.executableRunCommand,
      ["convex", "function-spec", ?convexSpecArgs],
    );
  }

  void buildDartClient(Configuration<CliOptions> config) {
    final (command, args) = _buildConvexSpecCommand(config);
    final workingDirectory = config.value(CliOptions.jsRoot);
    final outputDir = config.value(CliOptions.outputDir);
    final publicSerialize = config.value(CliOptions.publicSerialize);
    _lockedTask.run((state) async {
      logger.info("Generating Dart client...", type: TextLogType.init);
      logger.debug(
        'Running command: $command ${args.join(" ")} in directory: ${workingDirectory.path}',
      );
      final result = await state.wait(
        () => Process.run(
          command,
          args,
          workingDirectory: workingDirectory.path,
          runInShell: true,
        ),
      );

      if (result.exitCode != 0) {
        logger.error(
          "Failed to generate Dart client - convex function-spec command failed",
        );
        logger.error(
          "Command Details:\n"
          "  Command: $command ${args.join(" ")}\n"
          "  Working Directory: ${workingDirectory.path}\n"
          "  Exit Code: ${result.exitCode}\n"
          "  Stdout: ${result.stdout.toString().trim()}\n"
          "  Stderr: ${result.stderr.toString().trim()}",
        );
        logger.info(
          "Troubleshooting tips:\n"
          "  1. Ensure convex is installed: npm install -g convex\n"
          "  2. Check if you're in the correct directory with convex.json\n"
          "  3. Verify your convex deployment is accessible\n"
          "  4. Run 'convex function-spec' manually to see detailed errors",
        );
        return;
      }
      final stdout = result.stdout;
      final FunctionsSpec spec;
      try {
        spec = FunctionsSpecMapper.fromJson(stdout);
      } catch (e, stackTrace) {
        logger.error("Failed to parse convex function-spec JSON output");
        logger.error(
          "Parse Error Details:\n"
          "  Error: $e\n"
          "  Raw Output Length: ${stdout.toString().length} characters\n"
          "  Output Preview: ${stdout.toString().length > 200 ? '${stdout.toString().substring(0, 200)}...' : stdout.toString()}",
        );
        logger.debug("Full command stdout for debugging:");
        logger.debug("Stack trace: $stackTrace");
        logger.debug(stdout.toString());
        logger.info(
          "Troubleshooting tips:\n"
          "  1. Ensure your convex functions are properly exported\n"
          "  2. Check for syntax errors in your convex functions\n"
          "  3. Verify all function types are supported by the Dart client",
        );
        return;
      }
      logger.debug(
        'Generating client from spec to directory: ${outputDir.path}',
      );
      final context = ClientBuildContext();
      spec.build(context, publicSerialize: publicSerialize);
      logger.info("Cleaning output directory: ${outputDir.path}");
      await state.wait(() => _wipeDartFiles(outputDir));

      final tasks = <String, String>{};
      for (final entry in context.outputs.entries) {
        final filePath = path.join(outputDir.path, entry.key);
        tasks[filePath] = entry.value;
      }

      logger.info('Generating ${tasks.length} Dart files...');
      logger.debug(
        'File breakdown:\n${tasks.keys.map((k) => '  - ${path.relative(k, from: outputDir.path)}').join('\n')}',
      );

      /// Create a list of tasks to create the files
      final createTasks = <Future<void>>[];
      for (final entry in tasks.entries) {
        final file = File(entry.key);
        logger.debug(
          'Creating file structure: ${path.relative(entry.key, from: outputDir.path)}',
        );
        createTasks.add(file.create(recursive: true));
      }
      await state.wait(() => Future.wait(createTasks));
      logger.debug('File structure created for ${tasks.length} files');

      /// Create a list of tasks to write the files
      final writeTasks = <Future<void>>[];
      for (final entry in tasks.entries) {
        final file = File(entry.key);
        final relativePath = path.relative(entry.key, from: outputDir.path);
        final contentSize = entry.value.length;
        logger.debug('Writing $contentSize characters to: $relativePath');
        writeTasks.add(file.writeAsString(entry.value));
      }
      await state.wait(() => Future.wait(writeTasks));
      logger.info(
        'Successfully wrote ${tasks.length} files',
        type: TextLogType.success,
      );
      logger.info(
        "Dart client generated successfully! "
        "Monitoring for changes and will regenerate automatically when needed.",
        type: TextLogType.success,
      );
    });
  }

  Future<void> _wipeDartFiles(Directory dir) async {
    if (!await dir.exists()) {
      logger.debug('Directory ${dir.path} does not exist, skipping cleanup');
      return;
    }

    int deletedCount = 0;
    final List<String> deletedFiles = [];

    await for (final file in dir.list(recursive: true)) {
      if (file is File && file.path.endsWith(".dart")) {
        final relativePath = path.relative(file.path, from: dir.path);
        logger.debug('Removing existing file: $relativePath');
        await file.delete();
        deletedCount++;
        deletedFiles.add(relativePath);
      }
    }

    if (deletedCount > 0) {
      logger.info('Cleaned up $deletedCount existing Dart files');
      logger.debug(
        'Deleted files:\n${deletedFiles.map((f) => '  - $f').join('\n')}',
      );
    } else {
      logger.debug('No existing Dart files found to clean up');
    }
    _removeEmptyDirectories(dir);
  }

  /// Recursively removes all empty directories inside the given [directory].
  /// The root [directory] itself is not removed, even if it becomes empty.
  void _removeEmptyDirectories(Directory directory) {
    // Recurse into subdirectories first (post-order traversal)
    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        _removeEmptyDirectories(entity);
      }
    }

    // After processing subdirectories, check if the current directory is empty
    if (directory.listSync().isEmpty) {
      try {
        directory.deleteSync();
        logger.debug('Removed empty directory: ${directory.path}');
      } catch (e) {
        logger.error('Failed to remove ${directory.path}: $e');
      }
    }
  }

  @override
  Future<void> runWithConfig(Configuration<CliOptions> config) async {
    try {
      if (config.value(CliOptions.prod)) {
        logger.info("Generating Dart client in production mode...");
        buildDartClient(config);
        return;
      }

      // Run convex dev command in the background
      final workingDirectory = config.value(CliOptions.jsRoot);
      final (command, args) = _buildConvexDevCommand(config);
      final devCommand = "$command ${args.join(" ")}";

      logger.info(
        "Starting Convex development server...",
        type: TextLogType.init,
      );
      logger.info(
        "Configuration:\n"
        "  Command: $devCommand\n"
        "  Working Directory: ${workingDirectory.path}\n"
        "  JS Package Manager: ${config.value(CliOptions.jsPackageManager).name}\n"
        "  Production Mode: ${config.value(CliOptions.prod)}",
      );

      try {
        devProcess = await Process.start(
          command,
          args,
          workingDirectory: workingDirectory.path,
          runInShell: true,
        );

        logger.info(
          "Convex dev process started successfully (PID: ${devProcess!.pid})",
          type: TextLogType.success,
        );
      } catch (e, stackTrace) {
        logger.error(
          "Failed to start convex dev process",
          stackTrace: stackTrace,
        );
        logger.error("Error details: $e", stackTrace: stackTrace);
        logger.info(
          "Troubleshooting:\n"
          "  1. Ensure the JS package manager (${config.value(CliOptions.jsPackageManager).name}) is installed\n"
          "  2. Verify convex is installed in your project\n"
          "  3. Check that you're in the correct directory",
        );
        return;
      }
      // Log stdout and stderr of convex dev command
      devProcess!.stdout
          .transform(utf8.decoder)
          .transform(LineSplitter())
          .listen((event) {
            logger.info("convex dev stdout: $event");
            if (event.contains("Convex functions ready")) {
              buildDartClient(config);
            }
          });
      devProcess!.stderr
          .transform(utf8.decoder)
          .transform(LineSplitter())
          .listen((event) {
            logger.info("convex dev stderr: $event");
            if (event.contains("Convex functions ready")) {
              buildDartClient(config);
            }
          });

      // Wait for the process to exit
      final exitCode = await devProcess!.exitCode;
      devProcess = null;
      logger.info("Convex dev process exited with code $exitCode, exiting...");
    } finally {
      if (devProcess != null) {
        await killDevServer();
      }
    }
  }
}

Directory _defaultJsRoot() {
  return Directory.current;
}

Directory _defaultOutputDir() {
  return Directory("lib/src/convex");
}

enum JsPackageManager {
  npm('npx'),
  bun('bunx'),
  pnpm('pnpx'),
  yarn('yarn dlx');

  const JsPackageManager(this.executableRunCommand);

  final String executableRunCommand;
}

enum CliOptions<V> implements OptionDefinition<V> {
  jsRoot(
    DirOption(
      argName: 'js',
      argAbbrev: 'j',
      fromDefault: _defaultJsRoot,
      helpText: 'The root directory of the JS project',

      mode: PathExistMode.mustExist,
    ),
  ),
  outputDir(
    DirOption(
      argName: 'output',
      argAbbrev: 'o',
      fromDefault: _defaultOutputDir,
      helpText:
          'The directory to output the generated files to. Defaults to lib/src/convex in the Dart project.',
      mode: PathExistMode.mayExist,
    ),
  ),
  jsPackageManager(
    EnumOption(
      enumParser: EnumParser(JsPackageManager.values),
      argName: 'js-package-manager',
      helpText:
          'The package manager of the JS project. Defaults to npm if not specified.',
      defaultsTo: JsPackageManager.npm,
      allowedValues: JsPackageManager.values,
    ),
  ),
  convexDevArgs(
    StringOption(
      argName: 'convex-dev-args',
      helpText: 'Additional arguments to pass to the convex dev command.',
      mandatory: false,
    ),
  ),
  convexSpecArgs(
    StringOption(
      argName: 'convex-spec-args',
      helpText: 'Additional arguments to pass to the convex spec command.',
      mandatory: false,
    ),
  ),
  publicSerialize(
    FlagOption(
      argName: 'public-serialize',
      helpText: 'Whether to generate public deserialize/serialize functions.',
      defaultsTo: false,
      hide: true,
    ),
  ),
  prod(
    FlagOption(
      argName: 'prod',
      helpText:
          'Whether to generate the convex client in production mode. This will pass the --prod flag to the convex spec command & the convex dev command. Defaults to false.',
      defaultsTo: false,
    ),
  );

  const CliOptions(this.option);

  @override
  final ConfigOptionBase<V> option;
}
