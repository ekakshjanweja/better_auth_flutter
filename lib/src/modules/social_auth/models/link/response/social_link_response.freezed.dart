// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialLinkResponse {

 String get url; bool get redirect;
/// Create a copy of SocialLinkResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinkResponseCopyWith<SocialLinkResponse> get copyWith => _$SocialLinkResponseCopyWithImpl<SocialLinkResponse>(this as SocialLinkResponse, _$identity);

  /// Serializes this SocialLinkResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLinkResponse&&(identical(other.url, url) || other.url == url)&&(identical(other.redirect, redirect) || other.redirect == redirect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,redirect);

@override
String toString() {
  return 'SocialLinkResponse(url: $url, redirect: $redirect)';
}


}

/// @nodoc
abstract mixin class $SocialLinkResponseCopyWith<$Res>  {
  factory $SocialLinkResponseCopyWith(SocialLinkResponse value, $Res Function(SocialLinkResponse) _then) = _$SocialLinkResponseCopyWithImpl;
@useResult
$Res call({
 String url, bool redirect
});




}
/// @nodoc
class _$SocialLinkResponseCopyWithImpl<$Res>
    implements $SocialLinkResponseCopyWith<$Res> {
  _$SocialLinkResponseCopyWithImpl(this._self, this._then);

  final SocialLinkResponse _self;
  final $Res Function(SocialLinkResponse) _then;

/// Create a copy of SocialLinkResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? redirect = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialLinkResponse].
extension SocialLinkResponsePatterns on SocialLinkResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialLinkResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialLinkResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialLinkResponse value)  $default,){
final _that = this;
switch (_that) {
case _SocialLinkResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialLinkResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SocialLinkResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  bool redirect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialLinkResponse() when $default != null:
return $default(_that.url,_that.redirect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  bool redirect)  $default,) {final _that = this;
switch (_that) {
case _SocialLinkResponse():
return $default(_that.url,_that.redirect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  bool redirect)?  $default,) {final _that = this;
switch (_that) {
case _SocialLinkResponse() when $default != null:
return $default(_that.url,_that.redirect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialLinkResponse implements SocialLinkResponse {
  const _SocialLinkResponse({required this.url, this.redirect = false});
  factory _SocialLinkResponse.fromJson(Map<String, dynamic> json) => _$SocialLinkResponseFromJson(json);

@override final  String url;
@override@JsonKey() final  bool redirect;

/// Create a copy of SocialLinkResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinkResponseCopyWith<_SocialLinkResponse> get copyWith => __$SocialLinkResponseCopyWithImpl<_SocialLinkResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinkResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLinkResponse&&(identical(other.url, url) || other.url == url)&&(identical(other.redirect, redirect) || other.redirect == redirect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,redirect);

@override
String toString() {
  return 'SocialLinkResponse(url: $url, redirect: $redirect)';
}


}

/// @nodoc
abstract mixin class _$SocialLinkResponseCopyWith<$Res> implements $SocialLinkResponseCopyWith<$Res> {
  factory _$SocialLinkResponseCopyWith(_SocialLinkResponse value, $Res Function(_SocialLinkResponse) _then) = __$SocialLinkResponseCopyWithImpl;
@override @useResult
$Res call({
 String url, bool redirect
});




}
/// @nodoc
class __$SocialLinkResponseCopyWithImpl<$Res>
    implements _$SocialLinkResponseCopyWith<$Res> {
  __$SocialLinkResponseCopyWithImpl(this._self, this._then);

  final _SocialLinkResponse _self;
  final $Res Function(_SocialLinkResponse) _then;

/// Create a copy of SocialLinkResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? redirect = null,}) {
  return _then(_SocialLinkResponse(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,redirect: null == redirect ? _self.redirect : redirect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
