// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInEmailRequest {

 String get email; String get password; String? get callbackURL; String? get rememberMe;
/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEmailRequestCopyWith<SignInEmailRequest> get copyWith => _$SignInEmailRequestCopyWithImpl<SignInEmailRequest>(this as SignInEmailRequest, _$identity);

  /// Serializes this SignInEmailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEmailRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,callbackURL,rememberMe);

@override
String toString() {
  return 'SignInEmailRequest(email: $email, password: $password, callbackURL: $callbackURL, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $SignInEmailRequestCopyWith<$Res>  {
  factory $SignInEmailRequestCopyWith(SignInEmailRequest value, $Res Function(SignInEmailRequest) _then) = _$SignInEmailRequestCopyWithImpl;
@useResult
$Res call({
 String email, String password, String? callbackURL, String? rememberMe
});




}
/// @nodoc
class _$SignInEmailRequestCopyWithImpl<$Res>
    implements $SignInEmailRequestCopyWith<$Res> {
  _$SignInEmailRequestCopyWithImpl(this._self, this._then);

  final SignInEmailRequest _self;
  final $Res Function(SignInEmailRequest) _then;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? callbackURL = freezed,Object? rememberMe = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInEmailRequest].
extension SignInEmailRequestPatterns on SignInEmailRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInEmailRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInEmailRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignInEmailRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInEmailRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String? callbackURL,  String? rememberMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
return $default(_that.email,_that.password,_that.callbackURL,_that.rememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String? callbackURL,  String? rememberMe)  $default,) {final _that = this;
switch (_that) {
case _SignInEmailRequest():
return $default(_that.email,_that.password,_that.callbackURL,_that.rememberMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String? callbackURL,  String? rememberMe)?  $default,) {final _that = this;
switch (_that) {
case _SignInEmailRequest() when $default != null:
return $default(_that.email,_that.password,_that.callbackURL,_that.rememberMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInEmailRequest implements SignInEmailRequest {
  const _SignInEmailRequest({required this.email, required this.password, this.callbackURL, this.rememberMe});
  factory _SignInEmailRequest.fromJson(Map<String, dynamic> json) => _$SignInEmailRequestFromJson(json);

@override final  String email;
@override final  String password;
@override final  String? callbackURL;
@override final  String? rememberMe;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInEmailRequestCopyWith<_SignInEmailRequest> get copyWith => __$SignInEmailRequestCopyWithImpl<_SignInEmailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInEmailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInEmailRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,callbackURL,rememberMe);

@override
String toString() {
  return 'SignInEmailRequest(email: $email, password: $password, callbackURL: $callbackURL, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$SignInEmailRequestCopyWith<$Res> implements $SignInEmailRequestCopyWith<$Res> {
  factory _$SignInEmailRequestCopyWith(_SignInEmailRequest value, $Res Function(_SignInEmailRequest) _then) = __$SignInEmailRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String? callbackURL, String? rememberMe
});




}
/// @nodoc
class __$SignInEmailRequestCopyWithImpl<$Res>
    implements _$SignInEmailRequestCopyWith<$Res> {
  __$SignInEmailRequestCopyWithImpl(this._self, this._then);

  final _SignInEmailRequest _self;
  final $Res Function(_SignInEmailRequest) _then;

/// Create a copy of SignInEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? callbackURL = freezed,Object? rememberMe = freezed,}) {
  return _then(_SignInEmailRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
