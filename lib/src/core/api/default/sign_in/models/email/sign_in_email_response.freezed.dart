// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEmailResponse {

 bool get redirect; String get token; String? get url; User? get user;/// True when the server returned a two-factor challenge instead of a
/// session. When set, [user] and [token] are absent and the caller must
/// complete the second factor via the `twoFactor` plugin.
 bool? get twoFactorRedirect;
/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailResponseCopyWith<SignInEmailResponse> get copyWith => _$SignInEmailResponseCopyWithImpl<SignInEmailResponse>(this as SignInEmailResponse, _$identity);

  /// Serializes this SignInEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SignInEmailResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailResponse&&(identical(other.redirect, _this.redirect) || other.redirect == _this.redirect)&&(identical(other.token, _this.token) || other.token == _this.token)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.twoFactorRedirect, _this.twoFactorRedirect) || other.twoFactorRedirect == _this.twoFactorRedirect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SignInEmailResponse;
  return Object.hash(runtimeType,_this.redirect,_this.token,_this.url,_this.user,_this.twoFactorRedirect);
}

@override
String toString() {
  final _this = this as SignInEmailResponse;
  return 'SignInEmailResponse(redirect: ${_this.redirect}, token: ${_this.token}, url: ${_this.url}, user: ${_this.user}, twoFactorRedirect: ${_this.twoFactorRedirect})';
}


}

/// @nodoc
abstract mixin class $SignInEmailResponseCopyWith<$Res>  {
  factory $SignInEmailResponseCopyWith(SignInEmailResponse value, $Res Function(SignInEmailResponse) _then) = _$SignInEmailResponseCopyWithImpl;
@useResult
$Res call({
 bool redirect, String token, String? url, User? user, bool? twoFactorRedirect
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$SignInEmailResponseCopyWithImpl<$Res>
    implements $SignInEmailResponseCopyWith<$Res> {
  _$SignInEmailResponseCopyWithImpl(this._self, this._then);

  final SignInEmailResponse _self;
  final $Res Function(SignInEmailResponse) _then;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirect = null,Object? token = null,Object? url = freezed,Object? user = freezed,Object? twoFactorRedirect = freezed,}) {
  return _then(SignInEmailResponse(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,twoFactorRedirect: freezed == twoFactorRedirect ? _self.twoFactorRedirect : twoFactorRedirect // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInEmailResponse].
extension SignInEmailResponsePatterns on SignInEmailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInEmailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInEmailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInEmailResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignInEmailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInEmailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignInEmailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool redirect,  String token,  String? url,  User? user,  bool? twoFactorRedirect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInEmailResponse() when $default != null:
return $default(_that.redirect,_that.token,_that.url,_that.user,_that.twoFactorRedirect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool redirect,  String token,  String? url,  User? user,  bool? twoFactorRedirect)  $default,) {final _that = this;
switch (_that) {
case _SignInEmailResponse():
return $default(_that.redirect,_that.token,_that.url,_that.user,_that.twoFactorRedirect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool redirect,  String token,  String? url,  User? user,  bool? twoFactorRedirect)?  $default,) {final _that = this;
switch (_that) {
case _SignInEmailResponse() when $default != null:
return $default(_that.redirect,_that.token,_that.url,_that.user,_that.twoFactorRedirect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInEmailResponse implements SignInEmailResponse {
  const _SignInEmailResponse({this.redirect = false, this.token = "", this.url, this.user, this.twoFactorRedirect});
  factory _SignInEmailResponse.fromJson(Map<String, dynamic> json) => _$SignInEmailResponseFromJson(json);

@override@JsonKey() final  bool redirect;
@override@JsonKey() final  String token;
@override final  String? url;
@override final  User? user;
/// True when the server returned a two-factor challenge instead of a
/// session. When set, [user] and [token] are absent and the caller must
/// complete the second factor via the `twoFactor` plugin.
@override final  bool? twoFactorRedirect;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInEmailResponseCopyWith<_SignInEmailResponse> get copyWith => __$SignInEmailResponseCopyWithImpl<_SignInEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInEmailResponse&&(identical(other.redirect, redirect) || other.redirect == redirect)&&(identical(other.token, token) || other.token == token)&&(identical(other.url, url) || other.url == url)&&(identical(other.user, user) || other.user == user)&&(identical(other.twoFactorRedirect, twoFactorRedirect) || other.twoFactorRedirect == twoFactorRedirect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,redirect,token,url,user,twoFactorRedirect);
}

@override
String toString() {
    return 'SignInEmailResponse(redirect: $redirect, token: $token, url: $url, user: $user, twoFactorRedirect: $twoFactorRedirect)';
}


}

/// @nodoc
abstract mixin class _$SignInEmailResponseCopyWith<$Res> implements $SignInEmailResponseCopyWith<$Res> {
  factory _$SignInEmailResponseCopyWith(_SignInEmailResponse value, $Res Function(_SignInEmailResponse) _then) = __$SignInEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 bool redirect, String token, String? url, User? user, bool? twoFactorRedirect
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$SignInEmailResponseCopyWithImpl<$Res>
    implements _$SignInEmailResponseCopyWith<$Res> {
  __$SignInEmailResponseCopyWithImpl(this._self, this._then);

  final _SignInEmailResponse _self;
  final $Res Function(_SignInEmailResponse) _then;

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirect = null,Object? token = null,Object? url = freezed,Object? user = freezed,Object? twoFactorRedirect = freezed,}) {
  return _then(_SignInEmailResponse(
redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,twoFactorRedirect: freezed == twoFactorRedirect ? _self.twoFactorRedirect : twoFactorRedirect // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of SignInEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
