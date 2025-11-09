// ignore_for_file: constant_identifier_names

import 'package:dart_mappable/dart_mappable.dart';
import 'package:equatable/equatable.dart';
import 'package:recase/recase.dart';
import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';
import 'package:dart_style/dart_style.dart';
import 'dart:math';
part 'types.mapper.dart';

final deepEqual = DeepCollectionEquality.unordered();
final formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);
final random = Random();

class ClientBuildContext {
  final Map<String, String> outputs = {};
  final Set<JsLiteral> literals = {};
  // ignore: library_private_types_in_public_api
  final Set<_LiteralsUnion> enums = {};
  final Set<String> tables = {};
  ClientBuildContext();
}

class FunctionBuildContext {
  final StringBuffer headerBuffer = StringBuffer();
  final StringBuffer functionBuffer = StringBuffer();
  final StringBuffer typedefBuffer = StringBuffer();

  final ClientBuildContext clientContext;
  FunctionBuildContext(this.clientContext);
}

@MappableClass()
class FunctionsSpec with FunctionsSpecMappable {
  final String url;
  final List<BaseFunctionSpec> functions;

  FunctionsSpec(this.url, this.functions);

  Future<void> build(
    ClientBuildContext context, {
    required bool publicSerialize,
  }) async {
    final successFunctions = <FunctionSpec>[];
    // Create the functions
    for (final function in functions.whereType<FunctionSpec>()) {
      try {
        if (function.visibility.kind == VisibilityType.internal) {
          continue;
        }
        final functionContext = FunctionBuildContext(context);
        function.build(functionContext, publicSerialize: publicSerialize);
        final code =
            "${functionContext.headerBuffer}"
            "\n${functionContext.functionBuffer}"
            "\n${functionContext.typedefBuffer}";
        final filePath = path.joinAll(["functions", ...function.pathParts]);
        context.outputs[filePath] = code;
        successFunctions.add(function);
      } catch (e, stackTrace) {
        print(
          "ERROR: Failed to build function ${function.convexFunctionIdentifier}\n"
          "  Function Type: ${function.functionType}\n"
          "  Visibility: ${function.visibility.kind.name}\n"
          "  Error: $e\n"
          "  Stack Trace: $stackTrace\n"
          "\nTroubleshooting:\n"
          "  1. Check the function signature and return type\n"
          "  2. Ensure all types are supported by the Dart client\n"
          "  3. Verify the function exports are correct\n"
          "  4. Consider simplifying complex union types",
        );
      }
    }

    final httpFunctions = functions.whereType<HttpFunctionSpec>();

    // Create the client.dart file and API namespace helper
    buildClient(context, httpFunctions, successFunctions);
    // Create the schema.dart file
    _buildSchema(context);
    // Create the literals.dart file
    _buildLiterals(context);
    // Format the code
    int formattedCount = 0;
    int formatFailedCount = 0;
    for (final entry in context.outputs.entries) {
      try {
        context.outputs[entry.key] = formatter.format(entry.value);
        formattedCount++;
      } catch (e) {
        formatFailedCount++;
        print(
          "WARNING: Failed to format generated file ${entry.key}\n"
          "  Error: $e\n"
          "  The file will still be generated but may not be properly formatted.\n"
          "  You can manually format it using 'dart format' after generation.",
        );
      }
    }

    if (formatFailedCount > 0) {
      print(
        "Code formatting summary: $formattedCount files formatted successfully, "
        "$formatFailedCount files failed formatting but were still generated.",
      );
    }
  }

  void _buildSchema(ClientBuildContext context) {
    final schemaBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "dart:typed_data";
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
""");
    for (final tableName in context.tables) {
      schemaBuffer.writeln("""
class ${tableName.pascalCase}Id  implements TableId {
  @override
  final String name;
  static const String tableName = "$tableName";
  const ${tableName.pascalCase}Id(this.name);
  @override
  bool operator ==(Object other) {
    if (other is ${tableName.pascalCase}Id) {
      return name == other.name;
    }
    return false;
  }

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
""");
    }
    context.outputs[path.join("schema.dart")] = schemaBuffer.toString();
  }

  void buildClient(
    ClientBuildContext context,
    Iterable<HttpFunctionSpec> httpFunctions,
    Iterable<FunctionSpec> functions,
  ) {
    final httpFunctionsBuffer = StringBuffer();
    for (final httpFunction in httpFunctions) {
      try {
        httpFunctionsBuffer.writeln(httpFunction.build());
      } catch (e, stackTrace) {
        print(
          "WARNING: Failed to build HTTP function ${httpFunction.method.name} ${httpFunction.path}\n"
          "  Error: $e\n"
          "  Stack Trace: $stackTrace\n",
        );
      }
    }

    // Create the client.dart file
    context.outputs[path.join("client.dart")] =
        """
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import 'package:convex_dart/src/convex_dart_for_generated_code.dart'
    as internal;
import 'package:http/http.dart' as \$http;
import 'dart:convert' as \$convert;
export 'api.dart';

class ConvexClient {
  static Future<void> init() async {
    await internal.InternalConvexClient.init(
      deploymentUrl: "$url",
    );
  }
  Future<void> setAuth({required String? token}) async {
    await internal.InternalConvexClient.instance.setAuth(token: token);
  }

  static final String httpUrl = "${url.replaceAll(RegExp(r'\.cloud$'), '.site')}";

  $httpFunctionsBuffer

}
    """;

    final apiNamespace = _buildApiNamespace(functions);
    if (apiNamespace != null) {
      context.outputs[path.join("api.dart")] = apiNamespace;
    }
  }

  void _buildLiterals(ClientBuildContext context) {
    final literalsBuffer = StringBuffer("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
""");

    for (final $enum in context.enums) {
      literalsBuffer.writeln($enum.enumCode(context));
    }
    for (final literal in context.literals) {
      literalsBuffer.writeln(literal._literalCode);
    }
    context.outputs[path.join("literals.dart")] = literalsBuffer.toString();
  }

  String? _buildApiNamespace(Iterable<FunctionSpec> functions) {
    if (functions.isEmpty) {
      return null;
    }
    final builder = _ApiNamespaceBuilder(functions);
    return builder.build();
  }
}

class _ApiNamespaceBuilder {
  _ApiNamespaceBuilder(Iterable<FunctionSpec> functions) {
    for (final spec in functions) {
      _register(spec);
    }
  }

  final Map<String, int> _aliasCounts = {};
  final List<_FunctionBinding> _bindings = [];
  final _NamespaceNode _root = _NamespaceNode(null);

  static final _ignoreHeader = [
    '// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code',
    '// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member',
    '// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member',
  ].join('\n');

  void _register(FunctionSpec spec) {
    final moduleSegments = spec.pathParts
        .take(spec.pathParts.length - 1)
        .map((segment) => segment.replaceAll('.dart', ''));
    final pathSegments = List<String>.from(moduleSegments);
    final alias = _buildAlias(pathSegments, spec.functionName);
    final importPath = path.posix.joinAll(['functions', ...spec.pathParts]);
    final binding = _FunctionBinding(
      spec: spec,
      alias: alias,
      importPath: importPath,
      modulePath: pathSegments,
    );
    _bindings.add(binding);
    _attachToTree(binding);
  }

  void _attachToTree(_FunctionBinding binding) {
    var current = _root;
    for (final segment in binding.modulePath) {
      current = current.children.putIfAbsent(
        segment,
        () => _NamespaceNode(segment),
      );
    }
    current.functions.add(binding);
  }

  String build() {
    final buffer = StringBuffer();
    buffer.writeln(_ignoreHeader);

    // Imports
    final sortedBindings = _bindings.toList()
      ..sort((a, b) => a.importPath.compareTo(b.importPath));
    for (final binding in sortedBindings) {
      buffer.writeln("import '${binding.importPath}' as ${binding.alias};");
    }
    buffer.writeln();

    // Re-export types for backwards compatibility
    for (final binding in sortedBindings) {
      buffer.writeln("export '${binding.importPath}';");
    }
    buffer.writeln();

    buffer.writeln(_buildClass(_root, const []));
    buffer.writeln('const api = ${_classNameForPath(const [])}();');
    return buffer.toString();
  }

  String _buildClass(_NamespaceNode node, List<String> pathSegments) {
    final buffer = StringBuffer();
    final className = _classNameForPath(pathSegments);
    buffer.writeln('class $className {');
    buffer.writeln('  const $className();');
    final sortedChildren = node.children.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    for (final entry in sortedChildren) {
      final childPath = [...pathSegments, entry.key];
      final propertyName = _propertyName(entry.key);
      final childClassName = _classNameForPath(childPath);
      buffer.writeln(
        '  $childClassName get $propertyName => const $childClassName();',
      );
    }
    if (sortedChildren.isNotEmpty && node.functions.isNotEmpty) {
      buffer.writeln();
    }
    final sortedFunctions = node.functions
      ..sort((a, b) => a.spec.functionName.compareTo(b.spec.functionName));
    for (var i = 0; i < sortedFunctions.length; i++) {
      final binding = sortedFunctions[i];
      final spec = binding.spec;
      final alias = binding.alias;
      final returnType = '$alias.${spec.returnsTypeName}';
      final hasArgs = spec.argsTypeName != null;
      final argsType = hasArgs ? '$alias.${spec.argsTypeName}' : '';
      final params = hasArgs ? '$argsType args' : '';
      final invocationArgs = hasArgs ? 'args' : '';
      buffer.writeln(
        '  Future<$returnType> ${spec.functionName}($params) => $alias.${spec.functionName}($invocationArgs);',
      );
      if (spec.functionType == 'Query') {
        buffer.writeln(
          '  Stream<$returnType> ${spec.functionName}Stream($params) => $alias.${spec.functionName}Stream($invocationArgs);',
        );
      }
      if (i < sortedFunctions.length - 1) {
        buffer.writeln();
      }
    }
    buffer.writeln('}');
    buffer.writeln();
    for (final entry in sortedChildren) {
      final childPath = [...pathSegments, entry.key];
      buffer.write(_buildClass(entry.value, childPath));
    }
    return buffer.toString();
  }

  String _buildAlias(List<String> segments, String functionName) {
    final parts = <String>['fn', ...segments, functionName];
    final sanitized = parts
        .map((segment) => _sanitizeIdentifier(ReCase(segment).snakeCase))
        .join('_');
    final count = _aliasCounts.update(
      sanitized,
      (value) => value + 1,
      ifAbsent: () => 0,
    );
    if (count == 0) {
      return sanitized;
    }
    return '${sanitized}_$count';
  }

  static String _classNameForPath(List<String> pathSegments) {
    if (pathSegments.isEmpty) {
      return 'ConvexApi';
    }
    final buffer = StringBuffer('ConvexApi');
    for (final segment in pathSegments) {
      buffer.write(_pascal(segment));
    }
    return buffer.toString();
  }

  static String _propertyName(String segment) {
    return _camel(segment);
  }

  static String _sanitizeIdentifier(String value) {
    var sanitized = stringToDart(value);
    if (RegExp(r'^[0-9]').hasMatch(sanitized)) {
      sanitized = '_$sanitized';
    }
    return sanitized;
  }

  static String _pascal(String value) {
    final recase = ReCase(value).pascalCase;
    return _sanitizeIdentifier(recase);
  }

  static String _camel(String value) {
    final recase = ReCase(value).camelCase;
    return _sanitizeIdentifier(recase);
  }
}

class _NamespaceNode {
  _NamespaceNode(this.segment);

  final String? segment;
  final Map<String, _NamespaceNode> children = {};
  final List<_FunctionBinding> functions = [];
}

class _FunctionBinding {
  _FunctionBinding({
    required this.spec,
    required this.alias,
    required this.importPath,
    required this.modulePath,
  });

  final FunctionSpec spec;
  final String alias;
  final String importPath;
  final List<String> modulePath;
}

@MappableEnum(mode: ValuesMode.named)
enum VisibilityType {
  @MappableValue('public')
  public,
  @MappableValue('internal')
  internal,
}

@MappableClass()
class Visibility with VisibilityMappable {
  final VisibilityType kind;
  const Visibility(this.kind);
}

class EmptyObjectToAnyHook extends MappingHook {
  const EmptyObjectToAnyHook();
  @override
  dynamic afterDecode(dynamic value) {
    if (value is JsObject && value.value.isEmpty) {
      return JsAny("any");
    }
    return value;
  }
}

@MappableEnum(mode: ValuesMode.named)
enum HttpMethod {
  @MappableValue('GET')
  GET,
  @MappableValue('POST')
  POST,
  @MappableValue('PUT')
  PUT,
  @MappableValue('DELETE')
  DELETE,
  @MappableValue('OPTIONS')
  OPTIONS,
  @MappableValue('PATCH')
  PATCH,
}

@MappableClass()
sealed class BaseFunctionSpec with BaseFunctionSpecMappable {
  final String functionType;
  const BaseFunctionSpec(this.functionType);
}

@MappableClass(discriminatorValue: HttpFunctionSpec.checkType)
class HttpFunctionSpec extends BaseFunctionSpec with HttpFunctionSpecMappable {
  final HttpMethod method;
  final String path;
  const HttpFunctionSpec(super.functionType, this.method, this.path);
  static bool checkType(dynamic value) {
    return value is Map && value['functionType'] == 'HttpAction';
  }

  String build() {
    if (method == HttpMethod.OPTIONS) {
      throw StateError("OPTIONS requests are not supported");
    }
    final buffer = StringBuffer("static Future<\$http.Response> ");
    final hasSuffix = path.endsWith("*");
    final pathWithoutSuffix = path.replaceAll(RegExp(r"\*$"), "");

    String methodName = method.name.camelCase + stringToDart(path).pascalCase;
    buffer.write("$methodName({Map<String, String>? headers,");
    if (hasSuffix) {
      buffer.write("String suffix = '',");
    }
    switch (method) {
      case HttpMethod.POST ||
          HttpMethod.PUT ||
          HttpMethod.DELETE ||
          HttpMethod.PATCH:
        buffer.write("Object? body, \$convert.Encoding? encoding,");
      default:
    }
    buffer.writeln("}){");
    buffer.writeln(
      """final uri = Uri.parse(httpUrl + r'$pathWithoutSuffix' ${hasSuffix ? "+ suffix" : ""});""",
    );
    buffer.writeln("return \$http.");
    switch (method) {
      case HttpMethod.GET:
        buffer.write("get(");
      case HttpMethod.POST:
        buffer.write("post(");
      case HttpMethod.PUT:
        buffer.write("put(");
      case HttpMethod.DELETE:
        buffer.write("delete(");
      case HttpMethod.PATCH:
        buffer.write("patch(");
      case HttpMethod.OPTIONS:
        throw StateError("Unreachable Area");
    }
    buffer.write("uri,headers:headers,");
    switch (method) {
      case HttpMethod.POST ||
          HttpMethod.PUT ||
          HttpMethod.DELETE ||
          HttpMethod.PATCH:
        buffer.write("body:body,encoding:encoding,");
      default:
    }
    buffer.write(");");

    buffer.write("}");
    return buffer.toString();
  }
}

@MappableClass(discriminatorValue: FunctionSpec.checkType)
class FunctionSpec extends BaseFunctionSpec with FunctionSpecMappable {
  @MappableField(hook: EmptyObjectToAnyHook())
  final JsType args;
  @MappableField(hook: EmptyObjectToAnyHook())
  final JsType returns;
  final String identifier;
  final Visibility visibility;

  const FunctionSpec(
    this.args,
    this.returns,
    this.identifier,
    this.visibility,
    super.functionType,
  );

  static bool checkType(dynamic value) {
    return value is Map && value['functionType'] != 'HttpAction';
  }

  List<String> get pathParts {
    final parts = convexFunctionIdentifier.split(":").first.split("/");
    parts.add("${convexFunctionIdentifier.split(":").last}.dart");

    return parts;
  }

  String get functionName {
    return identifier.split(":").last;
  }

  String get convexFunctionIdentifier {
    // folder/file.ts:fnName
    // remove the .ts
    return identifier.replaceAll(RegExp(r"\.[^.:\s]+(?=:)"), "");
  }

  // The name of the typedef for the arguments
  // e.g. "MyFunctionArgs or void"
  String? get argsTypeName {
    switch (args) {
      case JsAny():
        return null;
      case JsObject():
        return "${functionName.pascalCase}Args";
      default:
        throw UnimplementedError(
          "Unsupported argument type: ${args.type} for the function $functionName.",
        );
    }
  }

  String get returnsTypeName => "${functionName.pascalCase}Response";

  void build(FunctionBuildContext context, {required bool publicSerialize}) {
    final serializeMethodName = publicSerialize ? "serialize" : "_serialize";
    final deserializeMethodName = publicSerialize
        ? "deserialize"
        : "_deserialize";

    final importPathPrefix = List.generate(
      pathParts.length,
      (index) => "..",
    ).join("/");

    context.headerBuffer.write("""
// ignore_for_file: type=lint, unused_import, unnecessary_question_mark, dead_code, dead_null_aware_expression
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter, invalid_use_of_internal_member
import "package:convex_dart/src/convex_dart_for_generated_code.dart";
import "dart:typed_data";
import "$importPathPrefix/schema.dart";
import "$importPathPrefix/literals.dart";
""");

    switch (args) {
      case JsAny():
        break;
      case JsObject obj:
        context.typedefBuffer.write(
          "typedef $argsTypeName = ${obj.dartType(context)};",
        );
      default:
        throw ArgumentError(
          'Function arguments must be either JsAny (for dynamic/any type) or JsObject (for structured object types). '
          'Found: ${args.type} for the function $functionName.',
        );
    }

    final JsObject returnsObject = switch (returns) {
      JsObject obj => obj,
      _ => JsObject({"body": JsField(returns, false)}, "object"),
    };
    context.typedefBuffer.write(
      "typedef $returnsTypeName = ${returnsObject.dartType(context)};",
    );

    final opperationType = switch (functionType) {
      "Query" => "query",
      "Mutation" => "mutation",
      "Action" => "action",
      _ => throw UnimplementedError("Unsupported function type: $functionType"),
    };

    context.functionBuffer.writeln('''
Future<$returnsTypeName> $functionName(${argsTypeName != null ? "$argsTypeName args" : ""}) async {
  ${switch (argsTypeName) {
      String() => "final serializedArgs = $serializeMethodName(args);",
      null => "final serializedArgs = $serializeMethodName(null);",
    }}
  final response = await InternalConvexClient.instance.$opperationType(name: '$convexFunctionIdentifier', args: serializedArgs);
  final deserializedResponse = $deserializeMethodName(response);
  return deserializedResponse;
}
''');

    if (functionType == "Query") {
      context.functionBuffer.writeln("""
Stream<$returnsTypeName> ${functionName}Stream(${argsTypeName != null ? "$argsTypeName args" : ""}) {
 ${switch (argsTypeName) {
        String() => "final serializedArgs = $serializeMethodName(args);",
        null => "final serializedArgs = $serializeMethodName(null);",
      }}
  return InternalConvexClient.instance.stream(
    name: '$convexFunctionIdentifier', 
    args: serializedArgs,
    decodeResult: $deserializeMethodName,
  );
}
""");
    }

    String serializeCode;
    if (args is JsAny) {
      serializeCode = "{}";
    } else {
      serializeCode = args.serialize(context, "args", nullable: false);
      // Remove the "encodeValue(" and ")"
      serializeCode = serializeCode.substring(12, serializeCode.length - 1);
    }

    String deserializeCode = returns.deserialize(
      context,
      "decodeValue(map)",
      nullable: false,
    );
    if (returns is! JsObject) {
      deserializeCode = "(body: $deserializeCode)";
    }

    context.functionBuffer.writeln("""
@pragma("vm:prefer-inline")
BTreeMapStringValue $serializeMethodName(${argsTypeName ?? "void"} args) {
  return hashmapToBtreemap(hashmap: $serializeCode);
}

""");
    context.functionBuffer.writeln("""
@pragma("vm:prefer-inline")
$returnsTypeName $deserializeMethodName(Value map) {
  return $deserializeCode;
}
""");
  }
}

@MappableClass()
class JsField with JsFieldMappable {
  final JsType fieldType;
  final bool optional;
  const JsField(this.fieldType, this.optional);
  String dartType(FunctionBuildContext context) {
    String type = fieldType.dartType(context);
    if (optional) {
      type = "Optional<$type>";
    }
    return type;
  }
}

@MappableClass(discriminatorKey: 'type')
sealed class JsType with JsTypeMappable {
  final String type;

  const JsType(this.type);
  String dartType(FunctionBuildContext context);
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
}

@MappableClass(discriminatorValue: 'any')
class JsAny extends JsType with JsAnyMappable {
  const JsAny(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'dynamic';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return name;
  }
}

@MappableClass(discriminatorValue: 'boolean')
class JsBoolean extends JsType with JsBooleanMappable {
  const JsBoolean(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'bool';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as bool$suffix)";
  }
}

@MappableClass(discriminatorValue: 'string')
class JsString extends JsType with JsStringMappable {
  const JsString(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'String';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as String$suffix)";
  }
}

@MappableClass(discriminatorValue: 'number')
class JsNumber extends JsType with JsNumberMappable {
  const JsNumber(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'double';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as double$suffix)";
  }
}

@MappableClass(discriminatorValue: 'null')
class JsNull extends JsType with JsNullMappable {
  const JsNull(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'void';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "null";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return "null";
  }
}

@MappableClass(discriminatorValue: 'bigint')
class JsBigInt extends JsType with JsBigIntMappable {
  const JsBigInt(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'int';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as int$suffix)";
  }
}

@MappableClass(discriminatorValue: 'bytes')
class JsBytes extends JsType with JsBytesMappable {
  const JsBytes(super.type);
  @override
  String dartType(FunctionBuildContext context) => 'Uint8ListWithEquality';
  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    return "($name as Uint8ListWithEquality$suffix)";
  }
}

@MappableClass(discriminatorValue: 'literal')
class JsLiteral extends JsType with JsLiteralMappable {
  final dynamic value;
  const JsLiteral(this.value, super.type);

  /// The name of the class which we will generate for this literal
  String get literalTypeName {
    String buildValue = switch (value) {
      int value => value.toDouble().toString(),
      _ => value.toString(),
    };
    //Replace . with _ (1.0) and - with _ (-50)
    buildValue = buildValue.replaceAll(".", "_").replaceAll("-", "_");
    // Remove any other non-alphanumeric characters
    buildValue = buildValue.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '');
    // Append a dollar sign to the value
    buildValue = "\$$buildValue";
    return buildValue;
  }

  dynamic get literalValueCode {
    // Ensure that this literal type can be encoded
    if (value is! String &&
        value is! int &&
        value is! double &&
        value is! bool &&
        value != null) {
      throw UnimplementedError(
        "Unsupported literal type: ${value.runtimeType} for value: $value",
      );
    }

    final dynamic valueString;
    if (value is String) {
      valueString = "'$value'";
    } else if (value is int) {
      // It is not possible to use a int literal at this time
      // https://github.com/get-convex/convex-backend/issues/212
      // This means that we can work around issue
      // https://github.com/get-convex/convex-backend/issues/213
      // by converting the int to a double
      valueString = (value as int).toDouble();
    } else {
      valueString = value;
    }
    return valueString;
  }

  // The code of the literal class
  String get _literalCode {
    return """

class $literalTypeName implements Literal {
  const $literalTypeName();
  const $literalTypeName.validate(dynamic value):assert(value == $literalValueCode, r"Value mismatch for $literalTypeName");
  
  @override
  final value = $literalValueCode; 

  @override
  bool operator ==(Object other) {
    if (other is $literalTypeName) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return r"$literalTypeName($value)";
  }
}
""";
  }

  @override
  String dartType(FunctionBuildContext context) {
    context.clientContext.literals.add(this);
    return literalTypeName;
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) => "encodeValue($name)";
  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    if (nullable) {
      return "$name == null ? null : $literalTypeName.validate($name)";
    }
    // While we really don't have to, it would be nice to catch any mismatches between
    // the type returned by the backend and the value we expect.
    return "$literalTypeName.validate($name)";
  }
}

sealed class _BaseUnion {
  // Does this union contain a JsNull.
  final bool nullable;
  _BaseUnion({required this.nullable});

  String dartType(FunctionBuildContext context);
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  });
}

// A union of a single type, this is really just a wrapper around a built in type
class _WrapperUnion extends _BaseUnion {
  final JsType wrappedType;
  _WrapperUnion({required super.nullable, required this.wrappedType});

  @override
  String dartType(FunctionBuildContext context) {
    return "${wrappedType.dartType(context)}${nullable ? "?" : ""}";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || this.nullable;
    return wrappedType.serialize(context, name, nullable: nullable);
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || this.nullable;
    return wrappedType.deserialize(context, name, nullable: nullable);
  }
}

// A union of literals, we will use an enhanced enum for this
class _LiteralsUnion extends _BaseUnion with EquatableMixin {
  final Set<JsLiteral> literals;
  _LiteralsUnion({required super.nullable, required this.literals});

  @override
  List<Object?> get props => [literals, nullable];

  @override
  String dartType(FunctionBuildContext context) {
    context.clientContext.enums.add(this);
    return enumName;
  }

  String get enumName {
    return literals.map((e) => e.literalTypeName.pascalCase).join("");
  }

  String enumCode(ClientBuildContext context) {
    for (final literal in literals) {
      context.literals.add(literal);
    }
    final enumBuffer = StringBuffer("enum $enumName {");
    for (final literal in literals) {
      enumBuffer.writeln(
        "${literal.literalTypeName}Member(${literal.literalTypeName}()),",
      );
    }
    enumBuffer.writeln(";");
    enumBuffer.writeln("""
const $enumName(this.value);
final Literal value;
static final _map = {""");

    for (final literal in literals) {
      enumBuffer.write(
        "${literal.literalValueCode} : ${literal.literalTypeName}Member,",
      );
    }
    if (nullable) {
      enumBuffer.write("null:null,");
    }
    enumBuffer.writeln("};");
    final nullableSuffix = nullable ? "?" : "";
    enumBuffer.writeln("""
static $enumName$nullableSuffix fromValue(dynamic value) {
  if (_map.containsKey(value)) {
    return _map[value] as $enumName$nullableSuffix;
  }
  throw Exception(value.toString() + r" cannot be converted to a $enumName");
}
""");
    enumBuffer.writeln("}");

    return enumBuffer.toString();
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || this.nullable;
    final dot = nullable ? "?." : ".";
    return "encodeValue($name${dot}value)";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return "${dartType(context)}.fromValue($name)";
  }
}

// A union of assorted objects, we will use Union#<> for this
class _ObjectsUnion extends _BaseUnion {
  final Iterable<JsType> types;
  _ObjectsUnion({required super.nullable, required this.types});

  @override
  String dartType(FunctionBuildContext context) {
    final type =
        "Union${types.length}<${types.map((e) => e.dartType(context)).join(', ')}>";
    return "$type${nullable ? "?" : ""}";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || this.nullable;

    final List<String> ons = [];
    for (final type in types) {
      final argName = "on${random.nextInt(1000000)}";
      ons.add(
        "($argName) => ${type.serialize(context, argName, nullable: nullable)}",
      );
    }
    final dot = nullable ? "?." : ".";

    return "encodeValue($name${dot}split(${ons.join(", ")}))";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    nullable = nullable || this.nullable;
    final dot = nullable ? "?." : ".";

    String type =
        "Union${types.length}<${types.map((e) => e.dartType(context)).join(', ')}>";
    final fnBuffer = StringBuffer();
    for (final type in types) {
      fnBuffer.writeln("""
try{
  return ${type.deserialize(context, name, nullable: nullable)};
} catch(e){}
""");
    }
    if (nullable) {
      fnBuffer.writeln("""
if ($name == null){
  return null;
}
""");
    }
    fnBuffer.writeln("""
throw Exception(($name${dot}toString() ?? "null") + r" cannot be deserialized into a $type");
""");

    type = """$type((){$fnBuffer}())""";
    return type;
  }
}

@MappableClass(discriminatorValue: 'union')
class JsUnion extends JsType with JsUnionMappable {
  final List<JsType> value;
  const JsUnion(this.value, super.type);

  _BaseUnion _buildUnion() {
    final isNullable = value.any((e) => e is JsNull);
    final objects = value.where((e) => e is! JsNull && e is! JsLiteral);
    final literals = value.whereType<JsLiteral>();

    // A union may not contain a String type and a ConvexId type
    // We have no way to differentiate between the two
    // So we need to throw an error
    if (objects.any((e) => e is JsString) && value.any((e) => e is ConvexId)) {
      throw UnimplementedError(
        "A union may not contain a String type and a ConvexId type. If you are seeing this and are having trouble, please file an issue on GitHub.",
      );
    }
    // Ensure we don't have a union between literal and a non-literal type
    if (objects.isNotEmpty && literals.isNotEmpty) {
      throw UnimplementedError(
        "A union may not contain a literal type and a non-literal type. If you are seeing this and are having trouble, please file an issue on GitHub.",
      );
    }
    // A union of more than 9 objects is not supported (Union2..9<> only goes up to Union9)
    if (objects.length > 9) {
      throw UnimplementedError(
        "Your cannot have a union of more than 9 objects",
      );
    }
    if (objects.length == 1) {
      return _WrapperUnion(nullable: isNullable, wrappedType: objects.first);
    }
    if (objects.length > 1) {
      return _ObjectsUnion(nullable: isNullable, types: objects);
    }
    if (literals.length == 1) {
      return _WrapperUnion(nullable: isNullable, wrappedType: literals.first);
    }
    if (literals.length > 1) {
      return _LiteralsUnion(nullable: isNullable, literals: {...literals});
    }

    throw UnimplementedError("Your union most contain at least one real type");
  }

  // Whether this uses the real union type, or is only a nullable type
  bool get isRealUnion => value.where((e) => e is! JsNull).length > 1;

  @override
  String dartType(FunctionBuildContext context) {
    return _buildUnion().dartType(context);
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return _buildUnion().serialize(context, name, nullable: nullable);
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return _buildUnion().deserialize(context, name, nullable: nullable);
  }
}

@MappableClass(discriminatorValue: 'record')
class JsRecord extends JsType with JsRecordMappable {
  final JsType keys;
  final JsField values;
  const JsRecord(this.keys, this.values, super.type);
  @override
  String dartType(FunctionBuildContext context) {
    if (keys is! JsString) {
      throw UnimplementedError(
        "Record keys must be a string. If you are seeing this and are having trouble, please file an issue on GitHub.",
      );
    }
    return "IMap<String, ${values.dartType(context)}>";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final argName = "on${random.nextInt(1000000)}";
    return "encodeValue({for (final $argName in $name${dot}entries) $argName${dot}key: encodeValue(${values.fieldType.serialize(context, "$argName${dot}value", nullable: nullable)})})";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final keyArgName = "on${random.nextInt(1000000)}";
    final valueArgName = "on${random.nextInt(1000000)}";
    return "($name as IMap<String, dynamic>$suffix)${dot}map(($keyArgName, $valueArgName) => MapEntry( $keyArgName, ${values.fieldType.deserialize(context, valueArgName, nullable: nullable)}))";
  }
}

@MappableClass(discriminatorValue: 'object')
class JsObject extends JsType with JsObjectMappable {
  final Map<String, JsField> value;
  const JsObject(this.value, super.type);

  Iterable<MapEntry<String, JsField>> get optionalFields =>
      value.entries.where((entry) => entry.value.optional);

  String safeDartKey(String name) {
    if (name.startsWith("_")) {
      name = "\$$name";
    }
    if (_dartKeywords.contains(name)) {
      name = "\$$name";
    }
    return name;
  }

  @override
  String dartType(FunctionBuildContext context) {
    if (value.isEmpty) {
      throw UnimplementedError(
        "convex_dart does not support empty objects. If you are seeing this and are having trouble, please file an issue on GitHub.",
      );
    }
    return "({${value.entries.map((entry) => "${entry.value.dartType(context)} ${safeDartKey(entry.key)}").join(",")}})";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final buffer = StringBuffer("{");
    for (final entry in value.entries) {
      if (entry.value.optional) {
        buffer.write(
          "if ($name$dot${safeDartKey(entry.key)}${dot}isDefined) '${entry.key}': ${entry.value.fieldType.serialize(context, "$name$dot${safeDartKey(entry.key)}${dot}asDefined()${dot}value", nullable: nullable)},",
        );
      } else {
        buffer.write(
          "'${entry.key}': ${entry.value.fieldType.serialize(context, "$name$dot${safeDartKey(entry.key)}", nullable: nullable)},",
        );
      }
    }
    buffer.write("}");
    return "encodeValue($buffer)";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final argName = "on${random.nextInt(1000000)}";
    final buffer = StringBuffer(
      "($name as IMap<String, dynamic>$suffix)${dot}then(($argName) => (",
    );
    for (final entry in value.entries) {
      if (entry.value.optional) {
        buffer.write(
          "${safeDartKey(entry.key)}: $argName${dot}containsKey('${entry.key}') ? Defined(${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: false)}) : Undefined<${entry.value.fieldType.dartType(context)}>(),",
        );
      } else {
        buffer.write(
          "${safeDartKey(entry.key)}: ${entry.value.fieldType.deserialize(context, "$argName['${entry.key}']", nullable: false)},",
        );
      }
    }
    buffer.write("))");
    return buffer.toString();
  }
}

@MappableClass(discriminatorValue: 'array')
class JsArray extends JsType with JsArrayMappable {
  final JsType value;
  const JsArray(this.value, super.type);
  @override
  String dartType(FunctionBuildContext context) {
    return "IList<${value.dartType(context)}>";
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final dot = nullable ? "?." : ".";
    final argName = "on${random.nextInt(1000000)}";
    return "encodeValue($name${dot}map(($argName) => ${value.serialize(context, argName, nullable: nullable)})${dot}toIList())";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    final suffix = nullable ? "?" : "";
    final dot = nullable ? "?." : ".";
    final randName = "on${random.nextInt(1000000)}";
    return "($name as IList<dynamic>$suffix)${dot}map(($randName) => ${value.deserialize(context, randName, nullable: nullable)})${dot}toIList()";
  }
}

@MappableClass(discriminatorValue: 'id')
class ConvexId extends JsType with ConvexIdMappable {
  final String tableName;
  const ConvexId(this.tableName, super.type);

  String get typeName => "${tableName.pascalCase}Id";

  @override
  String dartType(FunctionBuildContext context) {
    context.clientContext.tables.add(tableName);
    return typeName;
  }

  @override
  String serialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    return "encodeValue($name)";
  }

  @override
  String deserialize(
    FunctionBuildContext context,
    String name, {
    required bool nullable,
  }) {
    if (nullable) {
      return "$name == null ? null : $typeName($name as String)";
    }
    return "$typeName($name as String)";
  }
}

List<String> _dartKeywords = [
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'rethrow',
  'return',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'while',
  'with',
  'yield',
];
String stringToDart(String value) {
  // Replace "." and "-" with "_"
  value = value.replaceAll(".", "_").replaceAll("-", "_").replaceAll(" ", "_");
  // Replace any non dart chars with $
  value = value.replaceAll(RegExp(r'[^a-zA-Z0-9_$]'), r'$');
  if (_dartKeywords.contains(value)) {
    value = "\$$value";
  }
  return value;
}
