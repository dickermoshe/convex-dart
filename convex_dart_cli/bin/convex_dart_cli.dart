import 'dart:async';
import 'dart:io';
import 'package:config/config.dart';
import 'package:path/path.dart' as path;
import 'package:convex_dart_cli/src/types.dart';
import 'package:cli_tools/cli_tools.dart';
import 'package:locked_async/locked_async.dart';
import 'package:watcher/watcher.dart';

Future<void> main(List<String> args) async {
  final commandRunner = BetterCommandRunner<StandardGlobalOption, int>(
    'convex_dart_cli',
    'CLI for generating Dart Convex Client',
    globalOptions: [StandardGlobalOption.quiet, StandardGlobalOption.verbose],
  );
  commandRunner.addCommand(GenerateCommand(commandRunner));
  exitCode = await commandRunner.run(args) ?? 0;
}

class GenerateCommand extends BetterCommand<CliOptions, int> {
  GenerateCommand(this.commandRunner) : super(options: CliOptions.values);
  final BetterCommandRunner<StandardGlobalOption, int> commandRunner;

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

  /// Build the command which will be ran to generate the function spec
  (String, List<String>) _buildConvexSpecCommand(
    Configuration<CliOptions> config,
  ) {
    List<String>? convexSpecArgs;
    final deployment = config.optionalValue(CliOptions.deployment);
    if (deployment != null && deployment.isNotEmpty) {
      convexSpecArgs = ["--deployment", deployment];
    }
    final jsPackageManager = config.value(CliOptions.jsPackageManager);
    return (
      jsPackageManager.executableRunCommand,
      ["convex", "function-spec", ...?convexSpecArgs],
    );
  }

  Future<bool> buildDartClient(
    Configuration<CliOptions> config, {
    required Duration debounce,
    required bool watchMode,
  }) {
    final (command, args) = _buildConvexSpecCommand(config);
    final workingDirectory = config.value(CliOptions.jsRoot);
    final outputDir = config.value(CliOptions.outputDir);
    final publicSerialize = config.value(CliOptions.publicSerialize);
    final npmPackageManager = config.value(CliOptions.jsPackageManager);
    return _lockedTask.run((state) async {
      if (debounce > Duration.zero) {
        await state.wait(() => Future.delayed(debounce));
      }

      logger.info("Generating Dart client...", type: TextLogType.init);
      logger.debug(
        'Running command: $command ${args.join(" ")} in directory: ${workingDirectory.path}',
      );
      final result = await state.wait(
        () => _runCommand(
          state,
          command,
          args,
          workingDirectory: workingDirectory.path,
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
          "  1. Ensure convex is installed and available in the PATH. Test that `${npmPackageManager.executableRunCommand} convex --version` works.\n"
          "  2. Check that $workingDirectory contains a valid JS/TS project.\n"
          "  3. Verify your convex deployment is accessible\n"
          "  4. Run '$command ${args.join(" ")}' manually to see detailed errors",
        );
        return false;
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
        return false;
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
      if (watchMode) {
        logger.info(
          "Dart client generated successfully! "
          "Monitoring for changes and will regenerate automatically when needed.",
          type: TextLogType.success,
        );
      } else {
        logger.info(
          "Dart client generated successfully!",
          type: TextLogType.success,
        );
      }
      return true;
    });
  }

  Future<ProcessResult> _runCommand(
    LockedAsyncState state,
    String command,
    List<String> args, {
    required String workingDirectory,
  }) async {
    final process = await Process.start(
      command,
      args,
      workingDirectory: workingDirectory,
      runInShell: true,
    );
    var processExited = false;
    state.onCancel(() {
      if (!processExited) {
        unawaited(_killProcess(process));
      }
    });

    final stdoutFuture = process.stdout
        .transform(systemEncoding.decoder)
        .join();
    final stderrFuture = process.stderr
        .transform(systemEncoding.decoder)
        .join();
    final exitCode = await process.exitCode.whenComplete(() {
      processExited = true;
    });
    return ProcessResult(
      process.pid,
      exitCode,
      await stdoutFuture,
      await stderrFuture,
    );
  }

  Future<void> _killProcess(Process process) async {
    if (Platform.isWindows) {
      await Process.run('taskkill', ['/PID', '${process.pid}', '/T', '/F']);
    } else {
      process.kill(ProcessSignal.sigterm);
    }
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
    _removeEmptyDirectories(dir, preserveRoot: true);
  }

  /// Recursively removes all empty directories inside the given [directory].
  /// The root [directory] itself is not removed, even if it becomes empty.
  void _removeEmptyDirectories(
    Directory directory, {
    bool preserveRoot = false,
  }) {
    // Recurse into subdirectories first (post-order traversal)
    for (final entity in directory.listSync()) {
      if (entity is Directory) {
        _removeEmptyDirectories(entity);
      }
    }

    // After processing subdirectories, check if the current directory is empty
    if (!preserveRoot && directory.listSync().isEmpty) {
      try {
        directory.deleteSync();
        logger.debug('Removed empty directory: ${directory.path}');
      } catch (e) {
        logger.error('Failed to remove ${directory.path}: $e');
      }
    }
  }

  @override
  Future<int> runWithConfig(Configuration<CliOptions> config) async {
    try {
      final once = config.value(CliOptions.once);
      if (once) {
        final success = await buildDartClient(
          config,
          debounce: Duration.zero,
          watchMode: false,
        );
        return success ? 0 : 1;
      } else {
        final watchDirectory = config.value(CliOptions.jsWatchDirectory);
        final watcher = PollingDirectoryWatcher(watchDirectory.path);
        logger.info(
          "Watching ${watchDirectory.path} for changes...",
          type: TextLogType.init,
        );
        await buildDartClient(config, debounce: Duration.zero, watchMode: true);
        watcher.events.listen((event) {
          if (!{
            '.cjs',
            '.cts',
            '.js',
            '.jsx',
            '.mjs',
            '.mts',
            '.ts',
            '.tsx',
          }.contains(path.extension(event.path).toLowerCase())) {
            return;
          }
          logger.debug("Detected ${event.type} event: ${event.path}");
          buildDartClient(
            config,
            debounce: const Duration(milliseconds: 300),
            watchMode: true,
          ).ignore();
        });
        return 0;
      }
    } catch (e, stackTrace) {
      logger.error("Error: $e", stackTrace: stackTrace);
      return 1;
    }
  }
}

enum JsPackageManager {
  npm('npx'),
  bun('bunx'),
  pnpm('pnpx'),
  yarn('yarn dlx');

  const JsPackageManager(this.executableRunCommand);

  final String executableRunCommand;
}

Directory _defaultJsRoot() {
  return Directory.current;
}

Directory _defaultOutputDir() {
  return Directory("lib/src/convex");
}

Directory? _defaultWatchDirectory(Configuration<OptionDefinition> config) {
  final jsRoot = config.value(CliOptions.jsRoot);
  return Directory(path.join(jsRoot.path, "convex"));
}

enum CliOptions<V> implements OptionDefinition<V> {
  jsRoot(
    DirOption(
      argName: 'js',
      argAbbrev: 'j',
      fromDefault: _defaultJsRoot,
      helpText: 'The root directory of the JS/TS project.',
      mode: PathExistMode.mustExist,
    ),
  ),
  jsWatchDirectory(
    DirOption(
      argName: 'watch',
      argAbbrev: 'w',
      helpText:
          'The Convex directory inside the JS/TypeScript project whcih will be monitored for changes. When changes are detected, the Dart client will be regenerated.',
      fromCustom: _defaultWatchDirectory,
      mode: PathExistMode.mustExist,
    ),
  ),
  outputDir(
    DirOption(
      argName: 'output',
      argAbbrev: 'o',
      fromDefault: _defaultOutputDir,
      helpText: 'The directory to write the generated Dart client files to.',
      mode: PathExistMode.mayExist,
    ),
  ),
  jsPackageManager(
    EnumOption(
      enumParser: EnumParser(JsPackageManager.values),
      argName: 'js-package-manager',
      argAbbrev: 'p',
      helpText:
          'The package manager used to run convex function-spec. Defaults to npm.',
      defaultsTo: JsPackageManager.npm,
      allowedValues: JsPackageManager.values,
    ),
  ),
  publicSerialize(
    FlagOption(
      argName: 'public-serialize',
      helpText:
          'Generate public deserialize and serialize helpers. Primarily used for tests.',
      defaultsTo: false,
      hide: true,
    ),
  ),
  deployment(
    StringOption(
      argName: 'deployment',
      argAbbrev: 'd',
      helpText:
          'Convex deployment to inspect. Accepts a deployment name, dev, prod, local, a deployment reference, or project/team-qualified references.\nRun `convex function-spec --help` for more information on the available options.',
    ),
  ),
  once(
    FlagOption(
      argName: 'once',
      helpText:
          'Generate the Dart client once and exit instead of watching for changes.',
      defaultsTo: false,
    ),
  );

  const CliOptions(this.option);

  @override
  final ConfigOptionBase<V> option;
}
