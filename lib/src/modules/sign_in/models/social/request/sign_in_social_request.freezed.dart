// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_social_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInSocialRequest {

 String get provider; String? get callbackUrl; String? get newUserCallbackURL; String? get errorCallbackURL; bool? get disableRedirect; String? get scopes; SocialIdTokenBody? get idToken; String? get requestSignUp; String? get loginHint;
/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInSocialRequestCopyWith<SignInSocialRequest> get copyWith => _$SignInSocialRequestCopyWithImpl<SignInSocialRequest>(this as SignInSocialRequest, _$identity);

  /// Serializes this SignInSocialRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSocialRequest&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.callbackUrl, callbackUrl) || other.callbackUrl == callbackUrl)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,callbackUrl,newUserCallbackURL,errorCallbackURL,disableRedirect,scopes,idToken,requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialRequest(provider: $provider, callbackUrl: $callbackUrl, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, disableRedirect: $disableRedirect, scopes: $scopes, idToken: $idToken, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class $SignInSocialRequestCopyWith<$Res>  {
  factory $SignInSocialRequestCopyWith(SignInSocialRequest value, $Res Function(SignInSocialRequest) _then) = _$SignInSocialRequestCopyWithImpl;
@useResult
$Res call({
 String provider, String? callbackUrl, String? newUserCallbackURL, String? errorCallbackURL, bool? disableRedirect, String? scopes, SocialIdTokenBody? idToken, String? requestSignUp, String? loginHint
});


$SocialIdTokenBodyCopyWith<$Res>? get idToken;

}
/// @nodoc
class _$SignInSocialRequestCopyWithImpl<$Res>
    implements $SignInSocialRequestCopyWith<$Res> {
  _$SignInSocialRequestCopyWithImpl(this._self, this._then);

  final SignInSocialRequest _self;
  final $Res Function(SignInSocialRequest) _then;

/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? callbackUrl = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? disableRedirect = freezed,Object? scopes = freezed,Object? idToken = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,callbackUrl: freezed == callbackUrl ? _self.callbackUrl : callbackUrl // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as bool?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as SocialIdTokenBody?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as String?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialIdTokenBodyCopyWith<$Res>? get idToken {
    if (_self.idToken == null) {
    return null;
  }

  return $SocialIdTokenBodyCopyWith<$Res>(_self.idToken!, (value) {
    return _then(_self.copyWith(idToken: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignInSocialRequest].
extension SignInSocialRequestPatterns on SignInSocialRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInSocialRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInSocialRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInSocialRequest value)  $default,){
final _that = this;
switch (_that) {
case _SignInSocialRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInSocialRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SignInSocialRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String provider,  String? callbackUrl,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  String? scopes,  SocialIdTokenBody? idToken,  String? requestSignUp,  String? loginHint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInSocialRequest() when $default != null:
return $default(_that.provider,_that.callbackUrl,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.idToken,_that.requestSignUp,_that.loginHint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String provider,  String? callbackUrl,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  String? scopes,  SocialIdTokenBody? idToken,  String? requestSignUp,  String? loginHint)  $default,) {final _that = this;
switch (_that) {
case _SignInSocialRequest():
return $default(_that.provider,_that.callbackUrl,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.idToken,_that.requestSignUp,_that.loginHint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String provider,  String? callbackUrl,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  String? scopes,  SocialIdTokenBody? idToken,  String? requestSignUp,  String? loginHint)?  $default,) {final _that = this;
switch (_that) {
case _SignInSocialRequest() when $default != null:
return $default(_that.provider,_that.callbackUrl,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.idToken,_that.requestSignUp,_that.loginHint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInSocialRequest implements SignInSocialRequest {
  const _SignInSocialRequest({required this.provider, this.callbackUrl, this.newUserCallbackURL, this.errorCallbackURL, this.disableRedirect, this.scopes, this.idToken, this.requestSignUp, this.loginHint});
  factory _SignInSocialRequest.fromJson(Map<String, dynamic> json) => _$SignInSocialRequestFromJson(json);

@override final  String provider;
@override final  String? callbackUrl;
@override final  String? newUserCallbackURL;
@override final  String? errorCallbackURL;
@override final  bool? disableRedirect;
@override final  String? scopes;
@override final  SocialIdTokenBody? idToken;
@override final  String? requestSignUp;
@override final  String? loginHint;

/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInSocialRequestCopyWith<_SignInSocialRequest> get copyWith => __$SignInSocialRequestCopyWithImpl<_SignInSocialRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInSocialRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInSocialRequest&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.callbackUrl, callbackUrl) || other.callbackUrl == callbackUrl)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,callbackUrl,newUserCallbackURL,errorCallbackURL,disableRedirect,scopes,idToken,requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialRequest(provider: $provider, callbackUrl: $callbackUrl, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, disableRedirect: $disableRedirect, scopes: $scopes, idToken: $idToken, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class _$SignInSocialRequestCopyWith<$Res> implements $SignInSocialRequestCopyWith<$Res> {
  factory _$SignInSocialRequestCopyWith(_SignInSocialRequest value, $Res Function(_SignInSocialRequest) _then) = __$SignInSocialRequestCopyWithImpl;
@override @useResult
$Res call({
 String provider, String? callbackUrl, String? newUserCallbackURL, String? errorCallbackURL, bool? disableRedirect, String? scopes, SocialIdTokenBody? idToken, String? requestSignUp, String? loginHint
});


@override $SocialIdTokenBodyCopyWith<$Res>? get idToken;

}
/// @nodoc
class __$SignInSocialRequestCopyWithImpl<$Res>
    implements _$SignInSocialRequestCopyWith<$Res> {
  __$SignInSocialRequestCopyWithImpl(this._self, this._then);

  final _SignInSocialRequest _self;
  final $Res Function(_SignInSocialRequest) _then;

/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? callbackUrl = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? disableRedirect = freezed,Object? scopes = freezed,Object? idToken = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_SignInSocialRequest(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,callbackUrl: freezed == callbackUrl ? _self.callbackUrl : callbackUrl // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as bool?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as SocialIdTokenBody?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as String?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SignInSocialRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialIdTokenBodyCopyWith<$Res>? get idToken {
    if (_self.idToken == null) {
    return null;
  }

  return $SocialIdTokenBodyCopyWith<$Res>(_self.idToken!, (value) {
    return _then(_self.copyWith(idToken: value));
  });
}
}

// dart format on
