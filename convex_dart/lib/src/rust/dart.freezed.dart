// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthenticationToken {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationToken()';
}


}

/// @nodoc
class $AuthenticationTokenCopyWith<$Res>  {
$AuthenticationTokenCopyWith(AuthenticationToken _, $Res Function(AuthenticationToken) __);
}


/// Adds pattern-matching-related methods to [AuthenticationToken].
extension AuthenticationTokenPatterns on AuthenticationToken {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthenticationToken_Admin value)?  admin,TResult Function( AuthenticationToken_User value)?  user,TResult Function( AuthenticationToken_None value)?  none,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthenticationToken_Admin() when admin != null:
return admin(_that);case AuthenticationToken_User() when user != null:
return user(_that);case AuthenticationToken_None() when none != null:
return none(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthenticationToken_Admin value)  admin,required TResult Function( AuthenticationToken_User value)  user,required TResult Function( AuthenticationToken_None value)  none,}){
final _that = this;
switch (_that) {
case AuthenticationToken_Admin():
return admin(_that);case AuthenticationToken_User():
return user(_that);case AuthenticationToken_None():
return none(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthenticationToken_Admin value)?  admin,TResult? Function( AuthenticationToken_User value)?  user,TResult? Function( AuthenticationToken_None value)?  none,}){
final _that = this;
switch (_that) {
case AuthenticationToken_Admin() when admin != null:
return admin(_that);case AuthenticationToken_User() when user != null:
return user(_that);case AuthenticationToken_None() when none != null:
return none(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String field0,  UserIdentityAttributes? field1)?  admin,TResult Function( String field0)?  user,TResult Function()?  none,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthenticationToken_Admin() when admin != null:
return admin(_that.field0,_that.field1);case AuthenticationToken_User() when user != null:
return user(_that.field0);case AuthenticationToken_None() when none != null:
return none();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String field0,  UserIdentityAttributes? field1)  admin,required TResult Function( String field0)  user,required TResult Function()  none,}) {final _that = this;
switch (_that) {
case AuthenticationToken_Admin():
return admin(_that.field0,_that.field1);case AuthenticationToken_User():
return user(_that.field0);case AuthenticationToken_None():
return none();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String field0,  UserIdentityAttributes? field1)?  admin,TResult? Function( String field0)?  user,TResult? Function()?  none,}) {final _that = this;
switch (_that) {
case AuthenticationToken_Admin() when admin != null:
return admin(_that.field0,_that.field1);case AuthenticationToken_User() when user != null:
return user(_that.field0);case AuthenticationToken_None() when none != null:
return none();case _:
  return null;

}
}

}

/// @nodoc


class AuthenticationToken_Admin extends AuthenticationToken {
  const AuthenticationToken_Admin(this.field0, [this.field1]): super._();
  

 final  String field0;
 final  UserIdentityAttributes? field1;

/// Create a copy of AuthenticationToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticationToken_AdminCopyWith<AuthenticationToken_Admin> get copyWith => _$AuthenticationToken_AdminCopyWithImpl<AuthenticationToken_Admin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationToken_Admin&&(identical(other.field0, field0) || other.field0 == field0)&&(identical(other.field1, field1) || other.field1 == field1));
}


@override
int get hashCode => Object.hash(runtimeType,field0,field1);

@override
String toString() {
  return 'AuthenticationToken.admin(field0: $field0, field1: $field1)';
}


}

/// @nodoc
abstract mixin class $AuthenticationToken_AdminCopyWith<$Res> implements $AuthenticationTokenCopyWith<$Res> {
  factory $AuthenticationToken_AdminCopyWith(AuthenticationToken_Admin value, $Res Function(AuthenticationToken_Admin) _then) = _$AuthenticationToken_AdminCopyWithImpl;
@useResult
$Res call({
 String field0, UserIdentityAttributes? field1
});




}
/// @nodoc
class _$AuthenticationToken_AdminCopyWithImpl<$Res>
    implements $AuthenticationToken_AdminCopyWith<$Res> {
  _$AuthenticationToken_AdminCopyWithImpl(this._self, this._then);

  final AuthenticationToken_Admin _self;
  final $Res Function(AuthenticationToken_Admin) _then;

/// Create a copy of AuthenticationToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,Object? field1 = freezed,}) {
  return _then(AuthenticationToken_Admin(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as String,freezed == field1 ? _self.field1 : field1 // ignore: cast_nullable_to_non_nullable
as UserIdentityAttributes?,
  ));
}


}

/// @nodoc


class AuthenticationToken_User extends AuthenticationToken {
  const AuthenticationToken_User(this.field0): super._();
  

 final  String field0;

/// Create a copy of AuthenticationToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticationToken_UserCopyWith<AuthenticationToken_User> get copyWith => _$AuthenticationToken_UserCopyWithImpl<AuthenticationToken_User>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationToken_User&&(identical(other.field0, field0) || other.field0 == field0));
}


@override
int get hashCode => Object.hash(runtimeType,field0);

@override
String toString() {
  return 'AuthenticationToken.user(field0: $field0)';
}


}

/// @nodoc
abstract mixin class $AuthenticationToken_UserCopyWith<$Res> implements $AuthenticationTokenCopyWith<$Res> {
  factory $AuthenticationToken_UserCopyWith(AuthenticationToken_User value, $Res Function(AuthenticationToken_User) _then) = _$AuthenticationToken_UserCopyWithImpl;
@useResult
$Res call({
 String field0
});




}
/// @nodoc
class _$AuthenticationToken_UserCopyWithImpl<$Res>
    implements $AuthenticationToken_UserCopyWith<$Res> {
  _$AuthenticationToken_UserCopyWithImpl(this._self, this._then);

  final AuthenticationToken_User _self;
  final $Res Function(AuthenticationToken_User) _then;

/// Create a copy of AuthenticationToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field0 = null,}) {
  return _then(AuthenticationToken_User(
null == field0 ? _self.field0 : field0 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthenticationToken_None extends AuthenticationToken {
  const AuthenticationToken_None(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticationToken_None);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthenticationToken.none()';
}


}




/// @nodoc
mixin _$ClientError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClientError()';
}


}

/// @nodoc
class $ClientErrorCopyWith<$Res>  {
$ClientErrorCopyWith(ClientError _, $Res Function(ClientError) __);
}


/// Adds pattern-matching-related methods to [ClientError].
extension ClientErrorPatterns on ClientError {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ClientError_InternalError value)?  internalError,TResult Function( ClientError_ConvexError value)?  convexError,TResult Function( ClientError_ServerError value)?  serverError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ClientError_InternalError() when internalError != null:
return internalError(_that);case ClientError_ConvexError() when convexError != null:
return convexError(_that);case ClientError_ServerError() when serverError != null:
return serverError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ClientError_InternalError value)  internalError,required TResult Function( ClientError_ConvexError value)  convexError,required TResult Function( ClientError_ServerError value)  serverError,}){
final _that = this;
switch (_that) {
case ClientError_InternalError():
return internalError(_that);case ClientError_ConvexError():
return convexError(_that);case ClientError_ServerError():
return serverError(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ClientError_InternalError value)?  internalError,TResult? Function( ClientError_ConvexError value)?  convexError,TResult? Function( ClientError_ServerError value)?  serverError,}){
final _that = this;
switch (_that) {
case ClientError_InternalError() when internalError != null:
return internalError(_that);case ClientError_ConvexError() when convexError != null:
return convexError(_that);case ClientError_ServerError() when serverError != null:
return serverError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String msg)?  internalError,TResult Function( ConvexError err)?  convexError,TResult Function( String msg)?  serverError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ClientError_InternalError() when internalError != null:
return internalError(_that.msg);case ClientError_ConvexError() when convexError != null:
return convexError(_that.err);case ClientError_ServerError() when serverError != null:
return serverError(_that.msg);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String msg)  internalError,required TResult Function( ConvexError err)  convexError,required TResult Function( String msg)  serverError,}) {final _that = this;
switch (_that) {
case ClientError_InternalError():
return internalError(_that.msg);case ClientError_ConvexError():
return convexError(_that.err);case ClientError_ServerError():
return serverError(_that.msg);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String msg)?  internalError,TResult? Function( ConvexError err)?  convexError,TResult? Function( String msg)?  serverError,}) {final _that = this;
switch (_that) {
case ClientError_InternalError() when internalError != null:
return internalError(_that.msg);case ClientError_ConvexError() when convexError != null:
return convexError(_that.err);case ClientError_ServerError() when serverError != null:
return serverError(_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class ClientError_InternalError extends ClientError {
  const ClientError_InternalError({required this.msg}): super._();
  

/// A generic error message from the server.
 final  String msg;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_InternalErrorCopyWith<ClientError_InternalError> get copyWith => _$ClientError_InternalErrorCopyWithImpl<ClientError_InternalError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_InternalError&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'ClientError.internalError(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $ClientError_InternalErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_InternalErrorCopyWith(ClientError_InternalError value, $Res Function(ClientError_InternalError) _then) = _$ClientError_InternalErrorCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$ClientError_InternalErrorCopyWithImpl<$Res>
    implements $ClientError_InternalErrorCopyWith<$Res> {
  _$ClientError_InternalErrorCopyWithImpl(this._self, this._then);

  final ClientError_InternalError _self;
  final $Res Function(ClientError_InternalError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(ClientError_InternalError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientError_ConvexError extends ClientError {
  const ClientError_ConvexError({required this.err}): super._();
  

/// The ConvexError passed from the server to the client.
 final  ConvexError err;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_ConvexErrorCopyWith<ClientError_ConvexError> get copyWith => _$ClientError_ConvexErrorCopyWithImpl<ClientError_ConvexError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_ConvexError&&(identical(other.err, err) || other.err == err));
}


@override
int get hashCode => Object.hash(runtimeType,err);

@override
String toString() {
  return 'ClientError.convexError(err: $err)';
}


}

/// @nodoc
abstract mixin class $ClientError_ConvexErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_ConvexErrorCopyWith(ClientError_ConvexError value, $Res Function(ClientError_ConvexError) _then) = _$ClientError_ConvexErrorCopyWithImpl;
@useResult
$Res call({
 ConvexError err
});




}
/// @nodoc
class _$ClientError_ConvexErrorCopyWithImpl<$Res>
    implements $ClientError_ConvexErrorCopyWith<$Res> {
  _$ClientError_ConvexErrorCopyWithImpl(this._self, this._then);

  final ClientError_ConvexError _self;
  final $Res Function(ClientError_ConvexError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? err = null,}) {
  return _then(ClientError_ConvexError(
err: null == err ? _self.err : err // ignore: cast_nullable_to_non_nullable
as ConvexError,
  ));
}


}

/// @nodoc


class ClientError_ServerError extends ClientError {
  const ClientError_ServerError({required this.msg}): super._();
  

/// A generic error message from the server.
 final  String msg;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_ServerErrorCopyWith<ClientError_ServerError> get copyWith => _$ClientError_ServerErrorCopyWithImpl<ClientError_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_ServerError&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'ClientError.serverError(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $ClientError_ServerErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_ServerErrorCopyWith(ClientError_ServerError value, $Res Function(ClientError_ServerError) _then) = _$ClientError_ServerErrorCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$ClientError_ServerErrorCopyWithImpl<$Res>
    implements $ClientError_ServerErrorCopyWith<$Res> {
  _$ClientError_ServerErrorCopyWithImpl(this._self, this._then);

  final ClientError_ServerError _self;
  final $Res Function(ClientError_ServerError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(ClientError_ServerError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
