// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_time_token_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OneTimeTokenResponse {

 String get token;
/// Create a copy of OneTimeTokenResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OneTimeTokenResponseCopyWith<OneTimeTokenResponse> get copyWith => _$OneTimeTokenResponseCopyWithImpl<OneTimeTokenResponse>(this as OneTimeTokenResponse, _$identity);

  /// Serializes this OneTimeTokenResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OneTimeTokenResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OneTimeTokenResponse&&(identical(other.token, _this.token) || other.token == _this.token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OneTimeTokenResponse;
  return Object.hash(runtimeType,_this.token);
}

@override
String toString() {
  final _this = this as OneTimeTokenResponse;
  return 'OneTimeTokenResponse(token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $OneTimeTokenResponseCopyWith<$Res>  {
  factory $OneTimeTokenResponseCopyWith(OneTimeTokenResponse value, $Res Function(OneTimeTokenResponse) _then) = _$OneTimeTokenResponseCopyWithImpl;
@useResult
$Res call({
 String token
});




}
/// @nodoc
class _$OneTimeTokenResponseCopyWithImpl<$Res>
    implements $OneTimeTokenResponseCopyWith<$Res> {
  _$OneTimeTokenResponseCopyWithImpl(this._self, this._then);

  final OneTimeTokenResponse _self;
  final $Res Function(OneTimeTokenResponse) _then;

/// Create a copy of OneTimeTokenResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,}) {
  return _then(OneTimeTokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OneTimeTokenResponse].
extension OneTimeTokenResponsePatterns on OneTimeTokenResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OneTimeTokenResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OneTimeTokenResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OneTimeTokenResponse value)  $default,){
final _that = this;
switch (_that) {
case _OneTimeTokenResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OneTimeTokenResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OneTimeTokenResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OneTimeTokenResponse() when $default != null:
return $default(_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token)  $default,) {final _that = this;
switch (_that) {
case _OneTimeTokenResponse():
return $default(_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token)?  $default,) {final _that = this;
switch (_that) {
case _OneTimeTokenResponse() when $default != null:
return $default(_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OneTimeTokenResponse implements OneTimeTokenResponse {
  const _OneTimeTokenResponse({required this.token});
  factory _OneTimeTokenResponse.fromJson(Map<String, dynamic> json) => _$OneTimeTokenResponseFromJson(json);

@override final  String token;

/// Create a copy of OneTimeTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OneTimeTokenResponseCopyWith<_OneTimeTokenResponse> get copyWith => __$OneTimeTokenResponseCopyWithImpl<_OneTimeTokenResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OneTimeTokenResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OneTimeTokenResponse&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,token);
}

@override
String toString() {
    return 'OneTimeTokenResponse(token: $token)';
}


}

/// @nodoc
abstract mixin class _$OneTimeTokenResponseCopyWith<$Res> implements $OneTimeTokenResponseCopyWith<$Res> {
  factory _$OneTimeTokenResponseCopyWith(_OneTimeTokenResponse value, $Res Function(_OneTimeTokenResponse) _then) = __$OneTimeTokenResponseCopyWithImpl;
@override @useResult
$Res call({
 String token
});




}
/// @nodoc
class __$OneTimeTokenResponseCopyWithImpl<$Res>
    implements _$OneTimeTokenResponseCopyWith<$Res> {
  __$OneTimeTokenResponseCopyWithImpl(this._self, this._then);

  final _OneTimeTokenResponse _self;
  final $Res Function(_OneTimeTokenResponse) _then;

/// Create a copy of OneTimeTokenResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,}) {
  return _then(_OneTimeTokenResponse(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
