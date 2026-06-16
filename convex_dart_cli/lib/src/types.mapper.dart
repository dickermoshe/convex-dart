// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'types.dart';

class VisibilityTypeMapper extends EnumMapper<VisibilityType> {
  VisibilityTypeMapper._();

  static VisibilityTypeMapper? _instance;
  static VisibilityTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VisibilityTypeMapper._());
    }
    return _instance!;
  }

  static VisibilityType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VisibilityType decode(dynamic value) {
    switch (value) {
      case 'public':
        return VisibilityType.public;
      case 'internal':
        return VisibilityType.internal;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(VisibilityType self) {
    switch (self) {
      case VisibilityType.public:
        return 'public';
      case VisibilityType.internal:
        return 'internal';
    }
  }
}

extension VisibilityTypeMapperExtension on VisibilityType {
  dynamic toValue() {
    VisibilityTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VisibilityType>(this);
  }
}

class HttpMethodMapper extends EnumMapper<HttpMethod> {
  HttpMethodMapper._();

  static HttpMethodMapper? _instance;
  static HttpMethodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HttpMethodMapper._());
    }
    return _instance!;
  }

  static HttpMethod fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HttpMethod decode(dynamic value) {
    switch (value) {
      case 'GET':
        return HttpMethod.GET;
      case 'POST':
        return HttpMethod.POST;
      case 'PUT':
        return HttpMethod.PUT;
      case 'DELETE':
        return HttpMethod.DELETE;
      case 'OPTIONS':
        return HttpMethod.OPTIONS;
      case 'PATCH':
        return HttpMethod.PATCH;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HttpMethod self) {
    switch (self) {
      case HttpMethod.GET:
        return 'GET';
      case HttpMethod.POST:
        return 'POST';
      case HttpMethod.PUT:
        return 'PUT';
      case HttpMethod.DELETE:
        return 'DELETE';
      case HttpMethod.OPTIONS:
        return 'OPTIONS';
      case HttpMethod.PATCH:
        return 'PATCH';
    }
  }
}

extension HttpMethodMapperExtension on HttpMethod {
  dynamic toValue() {
    HttpMethodMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HttpMethod>(this);
  }
}

class FunctionsSpecMapper extends ClassMapperBase<FunctionsSpec> {
  FunctionsSpecMapper._();

  static FunctionsSpecMapper? _instance;
  static FunctionsSpecMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionsSpecMapper._());
      BaseFunctionSpecMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionsSpec';

  static String _$url(FunctionsSpec v) => v.url;
  static const Field<FunctionsSpec, String> _f$url = Field('url', _$url);
  static List<BaseFunctionSpec> _$functions(FunctionsSpec v) => v.functions;
  static const Field<FunctionsSpec, List<BaseFunctionSpec>> _f$functions =
      Field('functions', _$functions);

  @override
  final MappableFields<FunctionsSpec> fields = const {
    #url: _f$url,
    #functions: _f$functions,
  };

  static FunctionsSpec _instantiate(DecodingData data) {
    return FunctionsSpec(data.dec(_f$url), data.dec(_f$functions));
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionsSpec fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionsSpec>(map);
  }

  static FunctionsSpec fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionsSpec>(json);
  }
}

mixin FunctionsSpecMappable {
  String toJson() {
    return FunctionsSpecMapper.ensureInitialized().encodeJson<FunctionsSpec>(
      this as FunctionsSpec,
    );
  }

  Map<String, dynamic> toMap() {
    return FunctionsSpecMapper.ensureInitialized().encodeMap<FunctionsSpec>(
      this as FunctionsSpec,
    );
  }

  FunctionsSpecCopyWith<FunctionsSpec, FunctionsSpec, FunctionsSpec>
  get copyWith => _FunctionsSpecCopyWithImpl<FunctionsSpec, FunctionsSpec>(
    this as FunctionsSpec,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return FunctionsSpecMapper.ensureInitialized().stringifyValue(
      this as FunctionsSpec,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionsSpecMapper.ensureInitialized().equalsValue(
      this as FunctionsSpec,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionsSpecMapper.ensureInitialized().hashValue(
      this as FunctionsSpec,
    );
  }
}

extension FunctionsSpecValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionsSpec, $Out> {
  FunctionsSpecCopyWith<$R, FunctionsSpec, $Out> get $asFunctionsSpec =>
      $base.as((v, t, t2) => _FunctionsSpecCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FunctionsSpecCopyWith<$R, $In extends FunctionsSpec, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    BaseFunctionSpec,
    BaseFunctionSpecCopyWith<$R, BaseFunctionSpec, BaseFunctionSpec>
  >
  get functions;
  $R call({String? url, List<BaseFunctionSpec>? functions});
  FunctionsSpecCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FunctionsSpecCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionsSpec, $Out>
    implements FunctionsSpecCopyWith<$R, FunctionsSpec, $Out> {
  _FunctionsSpecCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionsSpec> $mapper =
      FunctionsSpecMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    BaseFunctionSpec,
    BaseFunctionSpecCopyWith<$R, BaseFunctionSpec, BaseFunctionSpec>
  >
  get functions => ListCopyWith(
    $value.functions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(functions: v),
  );
  @override
  $R call({String? url, List<BaseFunctionSpec>? functions}) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (functions != null) #functions: functions,
    }),
  );
  @override
  FunctionsSpec $make(CopyWithData data) => FunctionsSpec(
    data.get(#url, or: $value.url),
    data.get(#functions, or: $value.functions),
  );

  @override
  FunctionsSpecCopyWith<$R2, FunctionsSpec, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionsSpecCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BaseFunctionSpecMapper extends ClassMapperBase<BaseFunctionSpec> {
  BaseFunctionSpecMapper._();

  static BaseFunctionSpecMapper? _instance;
  static BaseFunctionSpecMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BaseFunctionSpecMapper._());
      HttpFunctionSpecMapper.ensureInitialized();
      FunctionSpecMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BaseFunctionSpec';

  static String _$functionType(BaseFunctionSpec v) => v.functionType;
  static const Field<BaseFunctionSpec, String> _f$functionType = Field(
    'functionType',
    _$functionType,
  );

  @override
  final MappableFields<BaseFunctionSpec> fields = const {
    #functionType: _f$functionType,
  };

  static BaseFunctionSpec _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('BaseFunctionSpec');
  }

  @override
  final Function instantiate = _instantiate;

  static BaseFunctionSpec fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BaseFunctionSpec>(map);
  }

  static BaseFunctionSpec fromJson(String json) {
    return ensureInitialized().decodeJson<BaseFunctionSpec>(json);
  }
}

mixin BaseFunctionSpecMappable {
  String toJson();
  Map<String, dynamic> toMap();
  BaseFunctionSpecCopyWith<BaseFunctionSpec, BaseFunctionSpec, BaseFunctionSpec>
  get copyWith;
}

abstract class BaseFunctionSpecCopyWith<$R, $In extends BaseFunctionSpec, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? functionType});
  BaseFunctionSpecCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class VisibilityMapper extends ClassMapperBase<Visibility> {
  VisibilityMapper._();

  static VisibilityMapper? _instance;
  static VisibilityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VisibilityMapper._());
      VisibilityTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Visibility';

  static VisibilityType _$kind(Visibility v) => v.kind;
  static const Field<Visibility, VisibilityType> _f$kind = Field(
    'kind',
    _$kind,
  );

  @override
  final MappableFields<Visibility> fields = const {#kind: _f$kind};

  static Visibility _instantiate(DecodingData data) {
    return Visibility(data.dec(_f$kind));
  }

  @override
  final Function instantiate = _instantiate;

  static Visibility fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Visibility>(map);
  }

  static Visibility fromJson(String json) {
    return ensureInitialized().decodeJson<Visibility>(json);
  }
}

mixin VisibilityMappable {
  String toJson() {
    return VisibilityMapper.ensureInitialized().encodeJson<Visibility>(
      this as Visibility,
    );
  }

  Map<String, dynamic> toMap() {
    return VisibilityMapper.ensureInitialized().encodeMap<Visibility>(
      this as Visibility,
    );
  }

  VisibilityCopyWith<Visibility, Visibility, Visibility> get copyWith =>
      _VisibilityCopyWithImpl<Visibility, Visibility>(
        this as Visibility,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return VisibilityMapper.ensureInitialized().stringifyValue(
      this as Visibility,
    );
  }

  @override
  bool operator ==(Object other) {
    return VisibilityMapper.ensureInitialized().equalsValue(
      this as Visibility,
      other,
    );
  }

  @override
  int get hashCode {
    return VisibilityMapper.ensureInitialized().hashValue(this as Visibility);
  }
}

extension VisibilityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Visibility, $Out> {
  VisibilityCopyWith<$R, Visibility, $Out> get $asVisibility =>
      $base.as((v, t, t2) => _VisibilityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class VisibilityCopyWith<$R, $In extends Visibility, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({VisibilityType? kind});
  VisibilityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VisibilityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Visibility, $Out>
    implements VisibilityCopyWith<$R, Visibility, $Out> {
  _VisibilityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Visibility> $mapper =
      VisibilityMapper.ensureInitialized();
  @override
  $R call({VisibilityType? kind}) =>
      $apply(FieldCopyWithData({if (kind != null) #kind: kind}));
  @override
  Visibility $make(CopyWithData data) =>
      Visibility(data.get(#kind, or: $value.kind));

  @override
  VisibilityCopyWith<$R2, Visibility, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _VisibilityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HttpFunctionSpecMapper extends SubClassMapperBase<HttpFunctionSpec> {
  HttpFunctionSpecMapper._();

  static HttpFunctionSpecMapper? _instance;
  static HttpFunctionSpecMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HttpFunctionSpecMapper._());
      BaseFunctionSpecMapper.ensureInitialized().addSubMapper(_instance!);
      HttpMethodMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HttpFunctionSpec';

  static String _$functionType(HttpFunctionSpec v) => v.functionType;
  static const Field<HttpFunctionSpec, String> _f$functionType = Field(
    'functionType',
    _$functionType,
  );
  static HttpMethod _$method(HttpFunctionSpec v) => v.method;
  static const Field<HttpFunctionSpec, HttpMethod> _f$method = Field(
    'method',
    _$method,
  );
  static String _$path(HttpFunctionSpec v) => v.path;
  static const Field<HttpFunctionSpec, String> _f$path = Field('path', _$path);

  @override
  final MappableFields<HttpFunctionSpec> fields = const {
    #functionType: _f$functionType,
    #method: _f$method,
    #path: _f$path,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = HttpFunctionSpec.checkType;
  @override
  late final ClassMapperBase superMapper =
      BaseFunctionSpecMapper.ensureInitialized();

  static HttpFunctionSpec _instantiate(DecodingData data) {
    return HttpFunctionSpec(
      data.dec(_f$functionType),
      data.dec(_f$method),
      data.dec(_f$path),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static HttpFunctionSpec fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HttpFunctionSpec>(map);
  }

  static HttpFunctionSpec fromJson(String json) {
    return ensureInitialized().decodeJson<HttpFunctionSpec>(json);
  }
}

mixin HttpFunctionSpecMappable {
  String toJson() {
    return HttpFunctionSpecMapper.ensureInitialized()
        .encodeJson<HttpFunctionSpec>(this as HttpFunctionSpec);
  }

  Map<String, dynamic> toMap() {
    return HttpFunctionSpecMapper.ensureInitialized()
        .encodeMap<HttpFunctionSpec>(this as HttpFunctionSpec);
  }

  HttpFunctionSpecCopyWith<HttpFunctionSpec, HttpFunctionSpec, HttpFunctionSpec>
  get copyWith =>
      _HttpFunctionSpecCopyWithImpl<HttpFunctionSpec, HttpFunctionSpec>(
        this as HttpFunctionSpec,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return HttpFunctionSpecMapper.ensureInitialized().stringifyValue(
      this as HttpFunctionSpec,
    );
  }

  @override
  bool operator ==(Object other) {
    return HttpFunctionSpecMapper.ensureInitialized().equalsValue(
      this as HttpFunctionSpec,
      other,
    );
  }

  @override
  int get hashCode {
    return HttpFunctionSpecMapper.ensureInitialized().hashValue(
      this as HttpFunctionSpec,
    );
  }
}

extension HttpFunctionSpecValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HttpFunctionSpec, $Out> {
  HttpFunctionSpecCopyWith<$R, HttpFunctionSpec, $Out>
  get $asHttpFunctionSpec =>
      $base.as((v, t, t2) => _HttpFunctionSpecCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HttpFunctionSpecCopyWith<$R, $In extends HttpFunctionSpec, $Out>
    implements BaseFunctionSpecCopyWith<$R, $In, $Out> {
  @override
  $R call({String? functionType, HttpMethod? method, String? path});
  HttpFunctionSpecCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _HttpFunctionSpecCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HttpFunctionSpec, $Out>
    implements HttpFunctionSpecCopyWith<$R, HttpFunctionSpec, $Out> {
  _HttpFunctionSpecCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HttpFunctionSpec> $mapper =
      HttpFunctionSpecMapper.ensureInitialized();
  @override
  $R call({String? functionType, HttpMethod? method, String? path}) => $apply(
    FieldCopyWithData({
      if (functionType != null) #functionType: functionType,
      if (method != null) #method: method,
      if (path != null) #path: path,
    }),
  );
  @override
  HttpFunctionSpec $make(CopyWithData data) => HttpFunctionSpec(
    data.get(#functionType, or: $value.functionType),
    data.get(#method, or: $value.method),
    data.get(#path, or: $value.path),
  );

  @override
  HttpFunctionSpecCopyWith<$R2, HttpFunctionSpec, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _HttpFunctionSpecCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class FunctionSpecMapper extends SubClassMapperBase<FunctionSpec> {
  FunctionSpecMapper._();

  static FunctionSpecMapper? _instance;
  static FunctionSpecMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FunctionSpecMapper._());
      BaseFunctionSpecMapper.ensureInitialized().addSubMapper(_instance!);
      JsTypeMapper.ensureInitialized();
      VisibilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'FunctionSpec';

  static JsType _$args(FunctionSpec v) => v.args;
  static const Field<FunctionSpec, JsType> _f$args = Field(
    'args',
    _$args,
    hook: EmptyObjectToAnyHook(),
  );
  static String _$identifier(FunctionSpec v) => v.identifier;
  static const Field<FunctionSpec, String> _f$identifier = Field(
    'identifier',
    _$identifier,
  );
  static Visibility _$visibility(FunctionSpec v) => v.visibility;
  static const Field<FunctionSpec, Visibility> _f$visibility = Field(
    'visibility',
    _$visibility,
  );
  static String _$functionType(FunctionSpec v) => v.functionType;
  static const Field<FunctionSpec, String> _f$functionType = Field(
    'functionType',
    _$functionType,
  );
  static JsType _$returns(FunctionSpec v) => v.returns;
  static const Field<FunctionSpec, JsType> _f$returns = Field(
    'returns',
    _$returns,
    opt: true,
    def: const JsAny("any"),
    hook: EmptyObjectToAnyHook(),
  );

  @override
  final MappableFields<FunctionSpec> fields = const {
    #args: _f$args,
    #identifier: _f$identifier,
    #visibility: _f$visibility,
    #functionType: _f$functionType,
    #returns: _f$returns,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = FunctionSpec.checkType;
  @override
  late final ClassMapperBase superMapper =
      BaseFunctionSpecMapper.ensureInitialized();

  static FunctionSpec _instantiate(DecodingData data) {
    return FunctionSpec(
      data.dec(_f$args),
      data.dec(_f$identifier),
      data.dec(_f$visibility),
      data.dec(_f$functionType),
      data.dec(_f$returns),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static FunctionSpec fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FunctionSpec>(map);
  }

  static FunctionSpec fromJson(String json) {
    return ensureInitialized().decodeJson<FunctionSpec>(json);
  }
}

mixin FunctionSpecMappable {
  String toJson() {
    return FunctionSpecMapper.ensureInitialized().encodeJson<FunctionSpec>(
      this as FunctionSpec,
    );
  }

  Map<String, dynamic> toMap() {
    return FunctionSpecMapper.ensureInitialized().encodeMap<FunctionSpec>(
      this as FunctionSpec,
    );
  }

  FunctionSpecCopyWith<FunctionSpec, FunctionSpec, FunctionSpec> get copyWith =>
      _FunctionSpecCopyWithImpl<FunctionSpec, FunctionSpec>(
        this as FunctionSpec,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return FunctionSpecMapper.ensureInitialized().stringifyValue(
      this as FunctionSpec,
    );
  }

  @override
  bool operator ==(Object other) {
    return FunctionSpecMapper.ensureInitialized().equalsValue(
      this as FunctionSpec,
      other,
    );
  }

  @override
  int get hashCode {
    return FunctionSpecMapper.ensureInitialized().hashValue(
      this as FunctionSpec,
    );
  }
}

extension FunctionSpecValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FunctionSpec, $Out> {
  FunctionSpecCopyWith<$R, FunctionSpec, $Out> get $asFunctionSpec =>
      $base.as((v, t, t2) => _FunctionSpecCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class FunctionSpecCopyWith<$R, $In extends FunctionSpec, $Out>
    implements BaseFunctionSpecCopyWith<$R, $In, $Out> {
  JsTypeCopyWith<$R, JsType, JsType> get args;
  VisibilityCopyWith<$R, Visibility, Visibility> get visibility;
  JsTypeCopyWith<$R, JsType, JsType> get returns;
  @override
  $R call({
    JsType? args,
    String? identifier,
    Visibility? visibility,
    String? functionType,
    JsType? returns,
  });
  FunctionSpecCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FunctionSpecCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FunctionSpec, $Out>
    implements FunctionSpecCopyWith<$R, FunctionSpec, $Out> {
  _FunctionSpecCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FunctionSpec> $mapper =
      FunctionSpecMapper.ensureInitialized();
  @override
  JsTypeCopyWith<$R, JsType, JsType> get args =>
      $value.args.copyWith.$chain((v) => call(args: v));
  @override
  VisibilityCopyWith<$R, Visibility, Visibility> get visibility =>
      $value.visibility.copyWith.$chain((v) => call(visibility: v));
  @override
  JsTypeCopyWith<$R, JsType, JsType> get returns =>
      $value.returns.copyWith.$chain((v) => call(returns: v));
  @override
  $R call({
    JsType? args,
    String? identifier,
    Visibility? visibility,
    String? functionType,
    JsType? returns,
  }) => $apply(
    FieldCopyWithData({
      if (args != null) #args: args,
      if (identifier != null) #identifier: identifier,
      if (visibility != null) #visibility: visibility,
      if (functionType != null) #functionType: functionType,
      if (returns != null) #returns: returns,
    }),
  );
  @override
  FunctionSpec $make(CopyWithData data) => FunctionSpec(
    data.get(#args, or: $value.args),
    data.get(#identifier, or: $value.identifier),
    data.get(#visibility, or: $value.visibility),
    data.get(#functionType, or: $value.functionType),
    data.get(#returns, or: $value.returns),
  );

  @override
  FunctionSpecCopyWith<$R2, FunctionSpec, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _FunctionSpecCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsTypeMapper extends ClassMapperBase<JsType> {
  JsTypeMapper._();

  static JsTypeMapper? _instance;
  static JsTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsTypeMapper._());
      JsAnyMapper.ensureInitialized();
      JsBooleanMapper.ensureInitialized();
      JsStringMapper.ensureInitialized();
      JsNumberMapper.ensureInitialized();
      JsNullMapper.ensureInitialized();
      JsBigIntMapper.ensureInitialized();
      JsBytesMapper.ensureInitialized();
      JsLiteralMapper.ensureInitialized();
      JsUnionMapper.ensureInitialized();
      JsRecordMapper.ensureInitialized();
      JsObjectMapper.ensureInitialized();
      JsArrayMapper.ensureInitialized();
      ConvexIdMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsType';

  static String _$type(JsType v) => v.type;
  static const Field<JsType, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsType> fields = const {#type: _f$type};

  static JsType _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'JsType',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static JsType fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsType>(map);
  }

  static JsType fromJson(String json) {
    return ensureInitialized().decodeJson<JsType>(json);
  }
}

mixin JsTypeMappable {
  String toJson();
  Map<String, dynamic> toMap();
  JsTypeCopyWith<JsType, JsType, JsType> get copyWith;
}

abstract class JsTypeCopyWith<$R, $In extends JsType, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? type});
  JsTypeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class JsFieldMapper extends ClassMapperBase<JsField> {
  JsFieldMapper._();

  static JsFieldMapper? _instance;
  static JsFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsFieldMapper._());
      JsTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsField';

  static JsType _$fieldType(JsField v) => v.fieldType;
  static const Field<JsField, JsType> _f$fieldType = Field(
    'fieldType',
    _$fieldType,
  );
  static bool _$optional(JsField v) => v.optional;
  static const Field<JsField, bool> _f$optional = Field('optional', _$optional);

  @override
  final MappableFields<JsField> fields = const {
    #fieldType: _f$fieldType,
    #optional: _f$optional,
  };

  static JsField _instantiate(DecodingData data) {
    return JsField(data.dec(_f$fieldType), data.dec(_f$optional));
  }

  @override
  final Function instantiate = _instantiate;

  static JsField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsField>(map);
  }

  static JsField fromJson(String json) {
    return ensureInitialized().decodeJson<JsField>(json);
  }
}

mixin JsFieldMappable {
  String toJson() {
    return JsFieldMapper.ensureInitialized().encodeJson<JsField>(
      this as JsField,
    );
  }

  Map<String, dynamic> toMap() {
    return JsFieldMapper.ensureInitialized().encodeMap<JsField>(
      this as JsField,
    );
  }

  JsFieldCopyWith<JsField, JsField, JsField> get copyWith =>
      _JsFieldCopyWithImpl<JsField, JsField>(
        this as JsField,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsFieldMapper.ensureInitialized().stringifyValue(this as JsField);
  }

  @override
  bool operator ==(Object other) {
    return JsFieldMapper.ensureInitialized().equalsValue(
      this as JsField,
      other,
    );
  }

  @override
  int get hashCode {
    return JsFieldMapper.ensureInitialized().hashValue(this as JsField);
  }
}

extension JsFieldValueCopy<$R, $Out> on ObjectCopyWith<$R, JsField, $Out> {
  JsFieldCopyWith<$R, JsField, $Out> get $asJsField =>
      $base.as((v, t, t2) => _JsFieldCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsFieldCopyWith<$R, $In extends JsField, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  JsTypeCopyWith<$R, JsType, JsType> get fieldType;
  $R call({JsType? fieldType, bool? optional});
  JsFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsField, $Out>
    implements JsFieldCopyWith<$R, JsField, $Out> {
  _JsFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsField> $mapper =
      JsFieldMapper.ensureInitialized();
  @override
  JsTypeCopyWith<$R, JsType, JsType> get fieldType =>
      $value.fieldType.copyWith.$chain((v) => call(fieldType: v));
  @override
  $R call({JsType? fieldType, bool? optional}) => $apply(
    FieldCopyWithData({
      if (fieldType != null) #fieldType: fieldType,
      if (optional != null) #optional: optional,
    }),
  );
  @override
  JsField $make(CopyWithData data) => JsField(
    data.get(#fieldType, or: $value.fieldType),
    data.get(#optional, or: $value.optional),
  );

  @override
  JsFieldCopyWith<$R2, JsField, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsFieldCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsAnyMapper extends SubClassMapperBase<JsAny> {
  JsAnyMapper._();

  static JsAnyMapper? _instance;
  static JsAnyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsAnyMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsAny';

  static String _$type(JsAny v) => v.type;
  static const Field<JsAny, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsAny> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'any';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsAny _instantiate(DecodingData data) {
    return JsAny(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsAny fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsAny>(map);
  }

  static JsAny fromJson(String json) {
    return ensureInitialized().decodeJson<JsAny>(json);
  }
}

mixin JsAnyMappable {
  String toJson() {
    return JsAnyMapper.ensureInitialized().encodeJson<JsAny>(this as JsAny);
  }

  Map<String, dynamic> toMap() {
    return JsAnyMapper.ensureInitialized().encodeMap<JsAny>(this as JsAny);
  }

  JsAnyCopyWith<JsAny, JsAny, JsAny> get copyWith =>
      _JsAnyCopyWithImpl<JsAny, JsAny>(this as JsAny, $identity, $identity);
  @override
  String toString() {
    return JsAnyMapper.ensureInitialized().stringifyValue(this as JsAny);
  }

  @override
  bool operator ==(Object other) {
    return JsAnyMapper.ensureInitialized().equalsValue(this as JsAny, other);
  }

  @override
  int get hashCode {
    return JsAnyMapper.ensureInitialized().hashValue(this as JsAny);
  }
}

extension JsAnyValueCopy<$R, $Out> on ObjectCopyWith<$R, JsAny, $Out> {
  JsAnyCopyWith<$R, JsAny, $Out> get $asJsAny =>
      $base.as((v, t, t2) => _JsAnyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsAnyCopyWith<$R, $In extends JsAny, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsAnyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsAnyCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, JsAny, $Out>
    implements JsAnyCopyWith<$R, JsAny, $Out> {
  _JsAnyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsAny> $mapper = JsAnyMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsAny $make(CopyWithData data) => JsAny(data.get(#type, or: $value.type));

  @override
  JsAnyCopyWith<$R2, JsAny, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsAnyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsBooleanMapper extends SubClassMapperBase<JsBoolean> {
  JsBooleanMapper._();

  static JsBooleanMapper? _instance;
  static JsBooleanMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsBooleanMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsBoolean';

  static String _$type(JsBoolean v) => v.type;
  static const Field<JsBoolean, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsBoolean> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'boolean';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsBoolean _instantiate(DecodingData data) {
    return JsBoolean(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsBoolean fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsBoolean>(map);
  }

  static JsBoolean fromJson(String json) {
    return ensureInitialized().decodeJson<JsBoolean>(json);
  }
}

mixin JsBooleanMappable {
  String toJson() {
    return JsBooleanMapper.ensureInitialized().encodeJson<JsBoolean>(
      this as JsBoolean,
    );
  }

  Map<String, dynamic> toMap() {
    return JsBooleanMapper.ensureInitialized().encodeMap<JsBoolean>(
      this as JsBoolean,
    );
  }

  JsBooleanCopyWith<JsBoolean, JsBoolean, JsBoolean> get copyWith =>
      _JsBooleanCopyWithImpl<JsBoolean, JsBoolean>(
        this as JsBoolean,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsBooleanMapper.ensureInitialized().stringifyValue(
      this as JsBoolean,
    );
  }

  @override
  bool operator ==(Object other) {
    return JsBooleanMapper.ensureInitialized().equalsValue(
      this as JsBoolean,
      other,
    );
  }

  @override
  int get hashCode {
    return JsBooleanMapper.ensureInitialized().hashValue(this as JsBoolean);
  }
}

extension JsBooleanValueCopy<$R, $Out> on ObjectCopyWith<$R, JsBoolean, $Out> {
  JsBooleanCopyWith<$R, JsBoolean, $Out> get $asJsBoolean =>
      $base.as((v, t, t2) => _JsBooleanCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsBooleanCopyWith<$R, $In extends JsBoolean, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsBooleanCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsBooleanCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsBoolean, $Out>
    implements JsBooleanCopyWith<$R, JsBoolean, $Out> {
  _JsBooleanCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsBoolean> $mapper =
      JsBooleanMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsBoolean $make(CopyWithData data) =>
      JsBoolean(data.get(#type, or: $value.type));

  @override
  JsBooleanCopyWith<$R2, JsBoolean, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsBooleanCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsStringMapper extends SubClassMapperBase<JsString> {
  JsStringMapper._();

  static JsStringMapper? _instance;
  static JsStringMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsStringMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsString';

  static String _$type(JsString v) => v.type;
  static const Field<JsString, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsString> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'string';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsString _instantiate(DecodingData data) {
    return JsString(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsString fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsString>(map);
  }

  static JsString fromJson(String json) {
    return ensureInitialized().decodeJson<JsString>(json);
  }
}

mixin JsStringMappable {
  String toJson() {
    return JsStringMapper.ensureInitialized().encodeJson<JsString>(
      this as JsString,
    );
  }

  Map<String, dynamic> toMap() {
    return JsStringMapper.ensureInitialized().encodeMap<JsString>(
      this as JsString,
    );
  }

  JsStringCopyWith<JsString, JsString, JsString> get copyWith =>
      _JsStringCopyWithImpl<JsString, JsString>(
        this as JsString,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsStringMapper.ensureInitialized().stringifyValue(this as JsString);
  }

  @override
  bool operator ==(Object other) {
    return JsStringMapper.ensureInitialized().equalsValue(
      this as JsString,
      other,
    );
  }

  @override
  int get hashCode {
    return JsStringMapper.ensureInitialized().hashValue(this as JsString);
  }
}

extension JsStringValueCopy<$R, $Out> on ObjectCopyWith<$R, JsString, $Out> {
  JsStringCopyWith<$R, JsString, $Out> get $asJsString =>
      $base.as((v, t, t2) => _JsStringCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsStringCopyWith<$R, $In extends JsString, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsStringCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsStringCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsString, $Out>
    implements JsStringCopyWith<$R, JsString, $Out> {
  _JsStringCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsString> $mapper =
      JsStringMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsString $make(CopyWithData data) =>
      JsString(data.get(#type, or: $value.type));

  @override
  JsStringCopyWith<$R2, JsString, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsStringCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsNumberMapper extends SubClassMapperBase<JsNumber> {
  JsNumberMapper._();

  static JsNumberMapper? _instance;
  static JsNumberMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsNumberMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsNumber';

  static String _$type(JsNumber v) => v.type;
  static const Field<JsNumber, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsNumber> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'number';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsNumber _instantiate(DecodingData data) {
    return JsNumber(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsNumber fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsNumber>(map);
  }

  static JsNumber fromJson(String json) {
    return ensureInitialized().decodeJson<JsNumber>(json);
  }
}

mixin JsNumberMappable {
  String toJson() {
    return JsNumberMapper.ensureInitialized().encodeJson<JsNumber>(
      this as JsNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return JsNumberMapper.ensureInitialized().encodeMap<JsNumber>(
      this as JsNumber,
    );
  }

  JsNumberCopyWith<JsNumber, JsNumber, JsNumber> get copyWith =>
      _JsNumberCopyWithImpl<JsNumber, JsNumber>(
        this as JsNumber,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsNumberMapper.ensureInitialized().stringifyValue(this as JsNumber);
  }

  @override
  bool operator ==(Object other) {
    return JsNumberMapper.ensureInitialized().equalsValue(
      this as JsNumber,
      other,
    );
  }

  @override
  int get hashCode {
    return JsNumberMapper.ensureInitialized().hashValue(this as JsNumber);
  }
}

extension JsNumberValueCopy<$R, $Out> on ObjectCopyWith<$R, JsNumber, $Out> {
  JsNumberCopyWith<$R, JsNumber, $Out> get $asJsNumber =>
      $base.as((v, t, t2) => _JsNumberCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsNumberCopyWith<$R, $In extends JsNumber, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsNumberCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsNumberCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsNumber, $Out>
    implements JsNumberCopyWith<$R, JsNumber, $Out> {
  _JsNumberCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsNumber> $mapper =
      JsNumberMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsNumber $make(CopyWithData data) =>
      JsNumber(data.get(#type, or: $value.type));

  @override
  JsNumberCopyWith<$R2, JsNumber, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsNumberCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsNullMapper extends SubClassMapperBase<JsNull> {
  JsNullMapper._();

  static JsNullMapper? _instance;
  static JsNullMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsNullMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsNull';

  static String _$type(JsNull v) => v.type;
  static const Field<JsNull, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsNull> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'null';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsNull _instantiate(DecodingData data) {
    return JsNull(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsNull fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsNull>(map);
  }

  static JsNull fromJson(String json) {
    return ensureInitialized().decodeJson<JsNull>(json);
  }
}

mixin JsNullMappable {
  String toJson() {
    return JsNullMapper.ensureInitialized().encodeJson<JsNull>(this as JsNull);
  }

  Map<String, dynamic> toMap() {
    return JsNullMapper.ensureInitialized().encodeMap<JsNull>(this as JsNull);
  }

  JsNullCopyWith<JsNull, JsNull, JsNull> get copyWith =>
      _JsNullCopyWithImpl<JsNull, JsNull>(this as JsNull, $identity, $identity);
  @override
  String toString() {
    return JsNullMapper.ensureInitialized().stringifyValue(this as JsNull);
  }

  @override
  bool operator ==(Object other) {
    return JsNullMapper.ensureInitialized().equalsValue(this as JsNull, other);
  }

  @override
  int get hashCode {
    return JsNullMapper.ensureInitialized().hashValue(this as JsNull);
  }
}

extension JsNullValueCopy<$R, $Out> on ObjectCopyWith<$R, JsNull, $Out> {
  JsNullCopyWith<$R, JsNull, $Out> get $asJsNull =>
      $base.as((v, t, t2) => _JsNullCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsNullCopyWith<$R, $In extends JsNull, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsNullCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsNullCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, JsNull, $Out>
    implements JsNullCopyWith<$R, JsNull, $Out> {
  _JsNullCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsNull> $mapper = JsNullMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsNull $make(CopyWithData data) => JsNull(data.get(#type, or: $value.type));

  @override
  JsNullCopyWith<$R2, JsNull, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsNullCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsBigIntMapper extends SubClassMapperBase<JsBigInt> {
  JsBigIntMapper._();

  static JsBigIntMapper? _instance;
  static JsBigIntMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsBigIntMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsBigInt';

  static String _$type(JsBigInt v) => v.type;
  static const Field<JsBigInt, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsBigInt> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'bigint';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsBigInt _instantiate(DecodingData data) {
    return JsBigInt(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsBigInt fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsBigInt>(map);
  }

  static JsBigInt fromJson(String json) {
    return ensureInitialized().decodeJson<JsBigInt>(json);
  }
}

mixin JsBigIntMappable {
  String toJson() {
    return JsBigIntMapper.ensureInitialized().encodeJson<JsBigInt>(
      this as JsBigInt,
    );
  }

  Map<String, dynamic> toMap() {
    return JsBigIntMapper.ensureInitialized().encodeMap<JsBigInt>(
      this as JsBigInt,
    );
  }

  JsBigIntCopyWith<JsBigInt, JsBigInt, JsBigInt> get copyWith =>
      _JsBigIntCopyWithImpl<JsBigInt, JsBigInt>(
        this as JsBigInt,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsBigIntMapper.ensureInitialized().stringifyValue(this as JsBigInt);
  }

  @override
  bool operator ==(Object other) {
    return JsBigIntMapper.ensureInitialized().equalsValue(
      this as JsBigInt,
      other,
    );
  }

  @override
  int get hashCode {
    return JsBigIntMapper.ensureInitialized().hashValue(this as JsBigInt);
  }
}

extension JsBigIntValueCopy<$R, $Out> on ObjectCopyWith<$R, JsBigInt, $Out> {
  JsBigIntCopyWith<$R, JsBigInt, $Out> get $asJsBigInt =>
      $base.as((v, t, t2) => _JsBigIntCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsBigIntCopyWith<$R, $In extends JsBigInt, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsBigIntCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsBigIntCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsBigInt, $Out>
    implements JsBigIntCopyWith<$R, JsBigInt, $Out> {
  _JsBigIntCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsBigInt> $mapper =
      JsBigIntMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsBigInt $make(CopyWithData data) =>
      JsBigInt(data.get(#type, or: $value.type));

  @override
  JsBigIntCopyWith<$R2, JsBigInt, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsBigIntCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsBytesMapper extends SubClassMapperBase<JsBytes> {
  JsBytesMapper._();

  static JsBytesMapper? _instance;
  static JsBytesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsBytesMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsBytes';

  static String _$type(JsBytes v) => v.type;
  static const Field<JsBytes, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsBytes> fields = const {#type: _f$type};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'bytes';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsBytes _instantiate(DecodingData data) {
    return JsBytes(data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsBytes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsBytes>(map);
  }

  static JsBytes fromJson(String json) {
    return ensureInitialized().decodeJson<JsBytes>(json);
  }
}

mixin JsBytesMappable {
  String toJson() {
    return JsBytesMapper.ensureInitialized().encodeJson<JsBytes>(
      this as JsBytes,
    );
  }

  Map<String, dynamic> toMap() {
    return JsBytesMapper.ensureInitialized().encodeMap<JsBytes>(
      this as JsBytes,
    );
  }

  JsBytesCopyWith<JsBytes, JsBytes, JsBytes> get copyWith =>
      _JsBytesCopyWithImpl<JsBytes, JsBytes>(
        this as JsBytes,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsBytesMapper.ensureInitialized().stringifyValue(this as JsBytes);
  }

  @override
  bool operator ==(Object other) {
    return JsBytesMapper.ensureInitialized().equalsValue(
      this as JsBytes,
      other,
    );
  }

  @override
  int get hashCode {
    return JsBytesMapper.ensureInitialized().hashValue(this as JsBytes);
  }
}

extension JsBytesValueCopy<$R, $Out> on ObjectCopyWith<$R, JsBytes, $Out> {
  JsBytesCopyWith<$R, JsBytes, $Out> get $asJsBytes =>
      $base.as((v, t, t2) => _JsBytesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsBytesCopyWith<$R, $In extends JsBytes, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type});
  JsBytesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsBytesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsBytes, $Out>
    implements JsBytesCopyWith<$R, JsBytes, $Out> {
  _JsBytesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsBytes> $mapper =
      JsBytesMapper.ensureInitialized();
  @override
  $R call({String? type}) =>
      $apply(FieldCopyWithData({if (type != null) #type: type}));
  @override
  JsBytes $make(CopyWithData data) => JsBytes(data.get(#type, or: $value.type));

  @override
  JsBytesCopyWith<$R2, JsBytes, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsBytesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsLiteralMapper extends SubClassMapperBase<JsLiteral> {
  JsLiteralMapper._();

  static JsLiteralMapper? _instance;
  static JsLiteralMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsLiteralMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'JsLiteral';

  static dynamic _$value(JsLiteral v) => v.value;
  static const Field<JsLiteral, dynamic> _f$value = Field('value', _$value);
  static String _$type(JsLiteral v) => v.type;
  static const Field<JsLiteral, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsLiteral> fields = const {
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'literal';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsLiteral _instantiate(DecodingData data) {
    return JsLiteral(data.dec(_f$value), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsLiteral fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsLiteral>(map);
  }

  static JsLiteral fromJson(String json) {
    return ensureInitialized().decodeJson<JsLiteral>(json);
  }
}

mixin JsLiteralMappable {
  String toJson() {
    return JsLiteralMapper.ensureInitialized().encodeJson<JsLiteral>(
      this as JsLiteral,
    );
  }

  Map<String, dynamic> toMap() {
    return JsLiteralMapper.ensureInitialized().encodeMap<JsLiteral>(
      this as JsLiteral,
    );
  }

  JsLiteralCopyWith<JsLiteral, JsLiteral, JsLiteral> get copyWith =>
      _JsLiteralCopyWithImpl<JsLiteral, JsLiteral>(
        this as JsLiteral,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsLiteralMapper.ensureInitialized().stringifyValue(
      this as JsLiteral,
    );
  }

  @override
  bool operator ==(Object other) {
    return JsLiteralMapper.ensureInitialized().equalsValue(
      this as JsLiteral,
      other,
    );
  }

  @override
  int get hashCode {
    return JsLiteralMapper.ensureInitialized().hashValue(this as JsLiteral);
  }
}

extension JsLiteralValueCopy<$R, $Out> on ObjectCopyWith<$R, JsLiteral, $Out> {
  JsLiteralCopyWith<$R, JsLiteral, $Out> get $asJsLiteral =>
      $base.as((v, t, t2) => _JsLiteralCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsLiteralCopyWith<$R, $In extends JsLiteral, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({dynamic value, String? type});
  JsLiteralCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsLiteralCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsLiteral, $Out>
    implements JsLiteralCopyWith<$R, JsLiteral, $Out> {
  _JsLiteralCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsLiteral> $mapper =
      JsLiteralMapper.ensureInitialized();
  @override
  $R call({Object? value = $none, String? type}) => $apply(
    FieldCopyWithData({
      if (value != $none) #value: value,
      if (type != null) #type: type,
    }),
  );
  @override
  JsLiteral $make(CopyWithData data) => JsLiteral(
    data.get(#value, or: $value.value),
    data.get(#type, or: $value.type),
  );

  @override
  JsLiteralCopyWith<$R2, JsLiteral, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsLiteralCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsUnionMapper extends SubClassMapperBase<JsUnion> {
  JsUnionMapper._();

  static JsUnionMapper? _instance;
  static JsUnionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsUnionMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
      JsTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsUnion';

  static List<JsType> _$value(JsUnion v) => v.value;
  static const Field<JsUnion, List<JsType>> _f$value = Field('value', _$value);
  static String _$type(JsUnion v) => v.type;
  static const Field<JsUnion, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsUnion> fields = const {
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'union';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsUnion _instantiate(DecodingData data) {
    return JsUnion(data.dec(_f$value), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsUnion fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsUnion>(map);
  }

  static JsUnion fromJson(String json) {
    return ensureInitialized().decodeJson<JsUnion>(json);
  }
}

mixin JsUnionMappable {
  String toJson() {
    return JsUnionMapper.ensureInitialized().encodeJson<JsUnion>(
      this as JsUnion,
    );
  }

  Map<String, dynamic> toMap() {
    return JsUnionMapper.ensureInitialized().encodeMap<JsUnion>(
      this as JsUnion,
    );
  }

  JsUnionCopyWith<JsUnion, JsUnion, JsUnion> get copyWith =>
      _JsUnionCopyWithImpl<JsUnion, JsUnion>(
        this as JsUnion,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsUnionMapper.ensureInitialized().stringifyValue(this as JsUnion);
  }

  @override
  bool operator ==(Object other) {
    return JsUnionMapper.ensureInitialized().equalsValue(
      this as JsUnion,
      other,
    );
  }

  @override
  int get hashCode {
    return JsUnionMapper.ensureInitialized().hashValue(this as JsUnion);
  }
}

extension JsUnionValueCopy<$R, $Out> on ObjectCopyWith<$R, JsUnion, $Out> {
  JsUnionCopyWith<$R, JsUnion, $Out> get $asJsUnion =>
      $base.as((v, t, t2) => _JsUnionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsUnionCopyWith<$R, $In extends JsUnion, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, JsType, JsTypeCopyWith<$R, JsType, JsType>> get value;
  @override
  $R call({List<JsType>? value, String? type});
  JsUnionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsUnionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsUnion, $Out>
    implements JsUnionCopyWith<$R, JsUnion, $Out> {
  _JsUnionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsUnion> $mapper =
      JsUnionMapper.ensureInitialized();
  @override
  ListCopyWith<$R, JsType, JsTypeCopyWith<$R, JsType, JsType>> get value =>
      ListCopyWith(
        $value.value,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(value: v),
      );
  @override
  $R call({List<JsType>? value, String? type}) => $apply(
    FieldCopyWithData({
      if (value != null) #value: value,
      if (type != null) #type: type,
    }),
  );
  @override
  JsUnion $make(CopyWithData data) => JsUnion(
    data.get(#value, or: $value.value),
    data.get(#type, or: $value.type),
  );

  @override
  JsUnionCopyWith<$R2, JsUnion, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsUnionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsRecordMapper extends SubClassMapperBase<JsRecord> {
  JsRecordMapper._();

  static JsRecordMapper? _instance;
  static JsRecordMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsRecordMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
      JsTypeMapper.ensureInitialized();
      JsFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsRecord';

  static JsType _$keys(JsRecord v) => v.keys;
  static const Field<JsRecord, JsType> _f$keys = Field('keys', _$keys);
  static JsField _$values(JsRecord v) => v.values;
  static const Field<JsRecord, JsField> _f$values = Field('values', _$values);
  static String _$type(JsRecord v) => v.type;
  static const Field<JsRecord, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsRecord> fields = const {
    #keys: _f$keys,
    #values: _f$values,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'record';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsRecord _instantiate(DecodingData data) {
    return JsRecord(data.dec(_f$keys), data.dec(_f$values), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsRecord fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsRecord>(map);
  }

  static JsRecord fromJson(String json) {
    return ensureInitialized().decodeJson<JsRecord>(json);
  }
}

mixin JsRecordMappable {
  String toJson() {
    return JsRecordMapper.ensureInitialized().encodeJson<JsRecord>(
      this as JsRecord,
    );
  }

  Map<String, dynamic> toMap() {
    return JsRecordMapper.ensureInitialized().encodeMap<JsRecord>(
      this as JsRecord,
    );
  }

  JsRecordCopyWith<JsRecord, JsRecord, JsRecord> get copyWith =>
      _JsRecordCopyWithImpl<JsRecord, JsRecord>(
        this as JsRecord,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsRecordMapper.ensureInitialized().stringifyValue(this as JsRecord);
  }

  @override
  bool operator ==(Object other) {
    return JsRecordMapper.ensureInitialized().equalsValue(
      this as JsRecord,
      other,
    );
  }

  @override
  int get hashCode {
    return JsRecordMapper.ensureInitialized().hashValue(this as JsRecord);
  }
}

extension JsRecordValueCopy<$R, $Out> on ObjectCopyWith<$R, JsRecord, $Out> {
  JsRecordCopyWith<$R, JsRecord, $Out> get $asJsRecord =>
      $base.as((v, t, t2) => _JsRecordCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsRecordCopyWith<$R, $In extends JsRecord, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  JsTypeCopyWith<$R, JsType, JsType> get keys;
  JsFieldCopyWith<$R, JsField, JsField> get values;
  @override
  $R call({JsType? keys, JsField? values, String? type});
  JsRecordCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsRecordCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsRecord, $Out>
    implements JsRecordCopyWith<$R, JsRecord, $Out> {
  _JsRecordCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsRecord> $mapper =
      JsRecordMapper.ensureInitialized();
  @override
  JsTypeCopyWith<$R, JsType, JsType> get keys =>
      $value.keys.copyWith.$chain((v) => call(keys: v));
  @override
  JsFieldCopyWith<$R, JsField, JsField> get values =>
      $value.values.copyWith.$chain((v) => call(values: v));
  @override
  $R call({JsType? keys, JsField? values, String? type}) => $apply(
    FieldCopyWithData({
      if (keys != null) #keys: keys,
      if (values != null) #values: values,
      if (type != null) #type: type,
    }),
  );
  @override
  JsRecord $make(CopyWithData data) => JsRecord(
    data.get(#keys, or: $value.keys),
    data.get(#values, or: $value.values),
    data.get(#type, or: $value.type),
  );

  @override
  JsRecordCopyWith<$R2, JsRecord, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsRecordCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsObjectMapper extends SubClassMapperBase<JsObject> {
  JsObjectMapper._();

  static JsObjectMapper? _instance;
  static JsObjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsObjectMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
      JsFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsObject';

  static Map<String, JsField> _$value(JsObject v) => v.value;
  static const Field<JsObject, Map<String, JsField>> _f$value = Field(
    'value',
    _$value,
  );
  static String _$type(JsObject v) => v.type;
  static const Field<JsObject, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsObject> fields = const {
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'object';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsObject _instantiate(DecodingData data) {
    return JsObject(data.dec(_f$value), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsObject fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsObject>(map);
  }

  static JsObject fromJson(String json) {
    return ensureInitialized().decodeJson<JsObject>(json);
  }
}

mixin JsObjectMappable {
  String toJson() {
    return JsObjectMapper.ensureInitialized().encodeJson<JsObject>(
      this as JsObject,
    );
  }

  Map<String, dynamic> toMap() {
    return JsObjectMapper.ensureInitialized().encodeMap<JsObject>(
      this as JsObject,
    );
  }

  JsObjectCopyWith<JsObject, JsObject, JsObject> get copyWith =>
      _JsObjectCopyWithImpl<JsObject, JsObject>(
        this as JsObject,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsObjectMapper.ensureInitialized().stringifyValue(this as JsObject);
  }

  @override
  bool operator ==(Object other) {
    return JsObjectMapper.ensureInitialized().equalsValue(
      this as JsObject,
      other,
    );
  }

  @override
  int get hashCode {
    return JsObjectMapper.ensureInitialized().hashValue(this as JsObject);
  }
}

extension JsObjectValueCopy<$R, $Out> on ObjectCopyWith<$R, JsObject, $Out> {
  JsObjectCopyWith<$R, JsObject, $Out> get $asJsObject =>
      $base.as((v, t, t2) => _JsObjectCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsObjectCopyWith<$R, $In extends JsObject, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, JsField, JsFieldCopyWith<$R, JsField, JsField>>
  get value;
  @override
  $R call({Map<String, JsField>? value, String? type});
  JsObjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsObjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsObject, $Out>
    implements JsObjectCopyWith<$R, JsObject, $Out> {
  _JsObjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsObject> $mapper =
      JsObjectMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, JsField, JsFieldCopyWith<$R, JsField, JsField>>
  get value => MapCopyWith(
    $value.value,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(value: v),
  );
  @override
  $R call({Map<String, JsField>? value, String? type}) => $apply(
    FieldCopyWithData({
      if (value != null) #value: value,
      if (type != null) #type: type,
    }),
  );
  @override
  JsObject $make(CopyWithData data) => JsObject(
    data.get(#value, or: $value.value),
    data.get(#type, or: $value.type),
  );

  @override
  JsObjectCopyWith<$R2, JsObject, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JsObjectCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JsArrayMapper extends SubClassMapperBase<JsArray> {
  JsArrayMapper._();

  static JsArrayMapper? _instance;
  static JsArrayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JsArrayMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
      JsTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JsArray';

  static JsType _$value(JsArray v) => v.value;
  static const Field<JsArray, JsType> _f$value = Field('value', _$value);
  static String _$type(JsArray v) => v.type;
  static const Field<JsArray, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<JsArray> fields = const {
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'array';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static JsArray _instantiate(DecodingData data) {
    return JsArray(data.dec(_f$value), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static JsArray fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JsArray>(map);
  }

  static JsArray fromJson(String json) {
    return ensureInitialized().decodeJson<JsArray>(json);
  }
}

mixin JsArrayMappable {
  String toJson() {
    return JsArrayMapper.ensureInitialized().encodeJson<JsArray>(
      this as JsArray,
    );
  }

  Map<String, dynamic> toMap() {
    return JsArrayMapper.ensureInitialized().encodeMap<JsArray>(
      this as JsArray,
    );
  }

  JsArrayCopyWith<JsArray, JsArray, JsArray> get copyWith =>
      _JsArrayCopyWithImpl<JsArray, JsArray>(
        this as JsArray,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JsArrayMapper.ensureInitialized().stringifyValue(this as JsArray);
  }

  @override
  bool operator ==(Object other) {
    return JsArrayMapper.ensureInitialized().equalsValue(
      this as JsArray,
      other,
    );
  }

  @override
  int get hashCode {
    return JsArrayMapper.ensureInitialized().hashValue(this as JsArray);
  }
}

extension JsArrayValueCopy<$R, $Out> on ObjectCopyWith<$R, JsArray, $Out> {
  JsArrayCopyWith<$R, JsArray, $Out> get $asJsArray =>
      $base.as((v, t, t2) => _JsArrayCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class JsArrayCopyWith<$R, $In extends JsArray, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  JsTypeCopyWith<$R, JsType, JsType> get value;
  @override
  $R call({JsType? value, String? type});
  JsArrayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JsArrayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JsArray, $Out>
    implements JsArrayCopyWith<$R, JsArray, $Out> {
  _JsArrayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JsArray> $mapper =
      JsArrayMapper.ensureInitialized();
  @override
  JsTypeCopyWith<$R, JsType, JsType> get value =>
      $value.value.copyWith.$chain((v) => call(value: v));
  @override
  $R call({JsType? value, String? type}) => $apply(
    FieldCopyWithData({
      if (value != null) #value: value,
      if (type != null) #type: type,
    }),
  );
  @override
  JsArray $make(CopyWithData data) => JsArray(
    data.get(#value, or: $value.value),
    data.get(#type, or: $value.type),
  );

  @override
  JsArrayCopyWith<$R2, JsArray, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JsArrayCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ConvexIdMapper extends SubClassMapperBase<ConvexId> {
  ConvexIdMapper._();

  static ConvexIdMapper? _instance;
  static ConvexIdMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConvexIdMapper._());
      JsTypeMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ConvexId';

  static String _$tableName(ConvexId v) => v.tableName;
  static const Field<ConvexId, String> _f$tableName = Field(
    'tableName',
    _$tableName,
  );
  static String _$type(ConvexId v) => v.type;
  static const Field<ConvexId, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<ConvexId> fields = const {
    #tableName: _f$tableName,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'id';
  @override
  late final ClassMapperBase superMapper = JsTypeMapper.ensureInitialized();

  static ConvexId _instantiate(DecodingData data) {
    return ConvexId(data.dec(_f$tableName), data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static ConvexId fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConvexId>(map);
  }

  static ConvexId fromJson(String json) {
    return ensureInitialized().decodeJson<ConvexId>(json);
  }
}

mixin ConvexIdMappable {
  String toJson() {
    return ConvexIdMapper.ensureInitialized().encodeJson<ConvexId>(
      this as ConvexId,
    );
  }

  Map<String, dynamic> toMap() {
    return ConvexIdMapper.ensureInitialized().encodeMap<ConvexId>(
      this as ConvexId,
    );
  }

  ConvexIdCopyWith<ConvexId, ConvexId, ConvexId> get copyWith =>
      _ConvexIdCopyWithImpl<ConvexId, ConvexId>(
        this as ConvexId,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ConvexIdMapper.ensureInitialized().stringifyValue(this as ConvexId);
  }

  @override
  bool operator ==(Object other) {
    return ConvexIdMapper.ensureInitialized().equalsValue(
      this as ConvexId,
      other,
    );
  }

  @override
  int get hashCode {
    return ConvexIdMapper.ensureInitialized().hashValue(this as ConvexId);
  }
}

extension ConvexIdValueCopy<$R, $Out> on ObjectCopyWith<$R, ConvexId, $Out> {
  ConvexIdCopyWith<$R, ConvexId, $Out> get $asConvexId =>
      $base.as((v, t, t2) => _ConvexIdCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ConvexIdCopyWith<$R, $In extends ConvexId, $Out>
    implements JsTypeCopyWith<$R, $In, $Out> {
  @override
  $R call({String? tableName, String? type});
  ConvexIdCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConvexIdCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConvexId, $Out>
    implements ConvexIdCopyWith<$R, ConvexId, $Out> {
  _ConvexIdCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConvexId> $mapper =
      ConvexIdMapper.ensureInitialized();
  @override
  $R call({String? tableName, String? type}) => $apply(
    FieldCopyWithData({
      if (tableName != null) #tableName: tableName,
      if (type != null) #type: type,
    }),
  );
  @override
  ConvexId $make(CopyWithData data) => ConvexId(
    data.get(#tableName, or: $value.tableName),
    data.get(#type, or: $value.type),
  );

  @override
  ConvexIdCopyWith<$R2, ConvexId, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ConvexIdCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

