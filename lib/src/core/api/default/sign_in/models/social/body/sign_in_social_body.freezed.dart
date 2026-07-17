// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_social_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInSocialBody {

 String get provider; SocialIdTokenBody? get idToken; String? get callbackURL; String? get newUserCallbackURL; String? get errorCallbackURL; bool? get disableRedirect; List<String>? get scopes; bool? get requestSignUp; String? get loginHint;
/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInSocialBodyCopyWith<SignInSocialBody> get copyWith => _$SignInSocialBodyCopyWithImpl<SignInSocialBody>(this as SignInSocialBody, _$identity);

  /// Serializes this SignInSocialBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSocialBody&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,idToken,callbackURL,newUserCallbackURL,errorCallbackURL,disableRedirect,const DeepCollectionEquality().hash(scopes),requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialBody(provider: $provider, idToken: $idToken, callbackURL: $callbackURL, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, disableRedirect: $disableRedirect, scopes: $scopes, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class $SignInSocialBodyCopyWith<$Res>  {
  factory $SignInSocialBodyCopyWith(SignInSocialBody value, $Res Function(SignInSocialBody) _then) = _$SignInSocialBodyCopyWithImpl;
@useResult
$Res call({
 String provider, SocialIdTokenBody? idToken, String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL, bool? disableRedirect, List<String>? scopes, bool? requestSignUp, String? loginHint
});


$SocialIdTokenBodyCopyWith<$Res>? get idToken;

}
/// @nodoc
class _$SignInSocialBodyCopyWithImpl<$Res>
    implements $SignInSocialBodyCopyWith<$Res> {
  _$SignInSocialBodyCopyWithImpl(this._self, this._then);

  final SignInSocialBody _self;
  final $Res Function(SignInSocialBody) _then;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? idToken = freezed,Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? disableRedirect = freezed,Object? scopes = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as SocialIdTokenBody?,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as bool?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as bool?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SignInSocialBody
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


/// Adds pattern-matching-related methods to [SignInSocialBody].
extension SignInSocialBodyPatterns on SignInSocialBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInSocialBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInSocialBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInSocialBody value)  $default,){
final _that = this;
switch (_that) {
case _SignInSocialBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInSocialBody value)?  $default,){
final _that = this;
switch (_that) {
case _SignInSocialBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String provider,  SocialIdTokenBody? idToken,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  List<String>? scopes,  bool? requestSignUp,  String? loginHint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInSocialBody() when $default != null:
return $default(_that.provider,_that.idToken,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.requestSignUp,_that.loginHint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String provider,  SocialIdTokenBody? idToken,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  List<String>? scopes,  bool? requestSignUp,  String? loginHint)  $default,) {final _that = this;
switch (_that) {
case _SignInSocialBody():
return $default(_that.provider,_that.idToken,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.requestSignUp,_that.loginHint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String provider,  SocialIdTokenBody? idToken,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL,  bool? disableRedirect,  List<String>? scopes,  bool? requestSignUp,  String? loginHint)?  $default,) {final _that = this;
switch (_that) {
case _SignInSocialBody() when $default != null:
return $default(_that.provider,_that.idToken,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL,_that.disableRedirect,_that.scopes,_that.requestSignUp,_that.loginHint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInSocialBody implements SignInSocialBody {
  const _SignInSocialBody({required this.provider, this.idToken, this.callbackURL, this.newUserCallbackURL, this.errorCallbackURL, this.disableRedirect, final  List<String>? scopes, this.requestSignUp, this.loginHint}): _scopes = scopes;
  factory _SignInSocialBody.fromJson(Map<String, dynamic> json) => _$SignInSocialBodyFromJson(json);

@override final  String provider;
@override final  SocialIdTokenBody? idToken;
@override final  String? callbackURL;
@override final  String? newUserCallbackURL;
@override final  String? errorCallbackURL;
@override final  bool? disableRedirect;
 final  List<String>? _scopes;
@override List<String>? get scopes {
  final value = _scopes;
  if (value == null) return null;
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? requestSignUp;
@override final  String? loginHint;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInSocialBodyCopyWith<_SignInSocialBody> get copyWith => __$SignInSocialBodyCopyWithImpl<_SignInSocialBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInSocialBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInSocialBody&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,idToken,callbackURL,newUserCallbackURL,errorCallbackURL,disableRedirect,const DeepCollectionEquality().hash(_scopes),requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialBody(provider: $provider, idToken: $idToken, callbackURL: $callbackURL, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, disableRedirect: $disableRedirect, scopes: $scopes, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class _$SignInSocialBodyCopyWith<$Res> implements $SignInSocialBodyCopyWith<$Res> {
  factory _$SignInSocialBodyCopyWith(_SignInSocialBody value, $Res Function(_SignInSocialBody) _then) = __$SignInSocialBodyCopyWithImpl;
@override @useResult
$Res call({
 String provider, SocialIdTokenBody? idToken, String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL, bool? disableRedirect, List<String>? scopes, bool? requestSignUp, String? loginHint
});


@override $SocialIdTokenBodyCopyWith<$Res>? get idToken;

}
/// @nodoc
class __$SignInSocialBodyCopyWithImpl<$Res>
    implements _$SignInSocialBodyCopyWith<$Res> {
  __$SignInSocialBodyCopyWithImpl(this._self, this._then);

  final _SignInSocialBody _self;
  final $Res Function(_SignInSocialBody) _then;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? idToken = freezed,Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? disableRedirect = freezed,Object? scopes = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_SignInSocialBody(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as SocialIdTokenBody?,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as bool?,scopes: freezed == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as bool?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SignInSocialBody
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
