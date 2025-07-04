// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_username_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInUsernameRequest {

 String get username; String get password; String? get rememberMe;
/// Create a copy of SignInUsernameRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInUsernameRequestCopyWith<SignInUsernameRequest> get copyWith => _$SignInUsernameRequestCopyWithImpl<SignInUsernameRequest>(this as SignInUsernameRequest, _$identity);

  /// Serializes this SignInUsernameRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInUsernameRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,rememberMe);

@override
String toString() {
  return 'SignInUsernameRequest(username: $username, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $SignInUsernameRequestCopyWith<$Res>  {
  factory $SignInUsernameRequestCopyWith(SignInUsernameRequest value, $Res Function(SignInUsernameRequest) _then) = _$SignInUsernameRequestCopyWithImpl;
@useResult
$Res call({
 String username, String password, String? rememberMe
});




}
/// @nodoc
class _$SignInUsernameRequestCopyWithImpl<$Res>
    implements $SignInUsernameRequestCopyWith<$Res> {
  _$SignInUsernameRequestCopyWithImpl(this._self, this._then);

  final SignInUsernameRequest _self;
  final $Res Function(SignInUsernameRequest) _then;

/// Create a copy of SignInUsernameRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInUsernameRequest].
extension SignInUsernameRequestPatterns on SignInUsernameRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInUsernameRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInUsernameRequest() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInUsernameRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignInUsernameRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInUsernameRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignInUsernameRequest() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password,  String? rememberMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInUsernameRequest() when $default != null:
return $default(_that.username,_that.password,_that.rememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password,  String? rememberMe)  $default,) {final _that = this;
switch (_that) {
case _SignInUsernameRequest():
return $default(_that.username,_that.password,_that.rememberMe);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password,  String? rememberMe)?  $default,) {final _that = this;
switch (_that) {
case _SignInUsernameRequest() when $default != null:
return $default(_that.username,_that.password,_that.rememberMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInUsernameRequest implements SignInUsernameRequest {
  const _SignInUsernameRequest({required this.username, required this.password, this.rememberMe});
  factory _SignInUsernameRequest.fromJson(Map<String, dynamic> json) => _$SignInUsernameRequestFromJson(json);

@override final  String username;
@override final  String password;
@override final  String? rememberMe;

/// Create a copy of SignInUsernameRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInUsernameRequestCopyWith<_SignInUsernameRequest> get copyWith => __$SignInUsernameRequestCopyWithImpl<_SignInUsernameRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInUsernameRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInUsernameRequest&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,rememberMe);

@override
String toString() {
  return 'SignInUsernameRequest(username: $username, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$SignInUsernameRequestCopyWith<$Res> implements $SignInUsernameRequestCopyWith<$Res> {
  factory _$SignInUsernameRequestCopyWith(_SignInUsernameRequest value, $Res Function(_SignInUsernameRequest) _then) = __$SignInUsernameRequestCopyWithImpl;
@override @useResult
$Res call({
 String username, String password, String? rememberMe
});




}
/// @nodoc
class __$SignInUsernameRequestCopyWithImpl<$Res>
    implements _$SignInUsernameRequestCopyWith<$Res> {
  __$SignInUsernameRequestCopyWithImpl(this._self, this._then);

  final _SignInUsernameRequest _self;
  final $Res Function(_SignInUsernameRequest) _then;

/// Create a copy of SignInUsernameRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_SignInUsernameRequest(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
