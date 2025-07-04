// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_link_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialLinkRequest {

 String? get callbackURL; String? get scopes; SocialProvider get provider;
/// Create a copy of SocialLinkRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinkRequestCopyWith<SocialLinkRequest> get copyWith => _$SocialLinkRequestCopyWithImpl<SocialLinkRequest>(this as SocialLinkRequest, _$identity);

  /// Serializes this SocialLinkRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLinkRequest&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,scopes,provider);

@override
String toString() {
  return 'SocialLinkRequest(callbackURL: $callbackURL, scopes: $scopes, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SocialLinkRequestCopyWith<$Res>  {
  factory $SocialLinkRequestCopyWith(SocialLinkRequest value, $Res Function(SocialLinkRequest) _then) = _$SocialLinkRequestCopyWithImpl;
@useResult
$Res call({
 String? callbackURL, String? scopes, SocialProvider provider
});




}
/// @nodoc
class _$SocialLinkRequestCopyWithImpl<$Res>
    implements $SocialLinkRequestCopyWith<$Res> {
  _$SocialLinkRequestCopyWithImpl(this._self, this._then);

  final SocialLinkRequest _self;
  final $Res Function(SocialLinkRequest) _then;

/// Create a copy of SocialLinkRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callbackURL = freezed,Object? scopes = freezed,Object? provider = null,}) {
  return _then(_self.copyWith(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as SocialProvider,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLinkRequest].
extension SocialLinkRequestPatterns on SocialLinkRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLinkRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLinkRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLinkRequest value)  $default,){
final _that = this;
switch (_that) {
case _SocialLinkRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLinkRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLinkRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? callbackURL,  String? scopes,  SocialProvider provider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLinkRequest() when $default != null:
return $default(_that.callbackURL,_that.scopes,_that.provider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? callbackURL,  String? scopes,  SocialProvider provider)  $default,) {final _that = this;
switch (_that) {
case _SocialLinkRequest():
return $default(_that.callbackURL,_that.scopes,_that.provider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? callbackURL,  String? scopes,  SocialProvider provider)?  $default,) {final _that = this;
switch (_that) {
case _SocialLinkRequest() when $default != null:
return $default(_that.callbackURL,_that.scopes,_that.provider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialLinkRequest implements SocialLinkRequest {
  const _SocialLinkRequest({this.callbackURL, this.scopes, required this.provider});
  factory _SocialLinkRequest.fromJson(Map<String, dynamic> json) => _$SocialLinkRequestFromJson(json);

@override final  String? callbackURL;
@override final  String? scopes;
@override final  SocialProvider provider;

/// Create a copy of SocialLinkRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinkRequestCopyWith<_SocialLinkRequest> get copyWith => __$SocialLinkRequestCopyWithImpl<_SocialLinkRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinkRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLinkRequest&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,scopes,provider);

@override
String toString() {
  return 'SocialLinkRequest(callbackURL: $callbackURL, scopes: $scopes, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SocialLinkRequestCopyWith<$Res> implements $SocialLinkRequestCopyWith<$Res> {
  factory _$SocialLinkRequestCopyWith(_SocialLinkRequest value, $Res Function(_SocialLinkRequest) _then) = __$SocialLinkRequestCopyWithImpl;
@override @useResult
$Res call({
 String? callbackURL, String? scopes, SocialProvider provider
});




}
/// @nodoc
class __$SocialLinkRequestCopyWithImpl<$Res>
    implements _$SocialLinkRequestCopyWith<$Res> {
  __$SocialLinkRequestCopyWithImpl(this._self, this._then);

  final _SocialLinkRequest _self;
  final $Res Function(_SocialLinkRequest) _then;

/// Create a copy of SocialLinkRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callbackURL = freezed,Object? scopes = freezed,Object? provider = null,}) {
  return _then(_SocialLinkRequest(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as SocialProvider,
  ));
}


}

// dart format on
