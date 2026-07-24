// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_key_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JwtKeyResponse {

 List<JwtKey> get keys;
/// Create a copy of JwtKeyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JwtKeyResponseCopyWith<JwtKeyResponse> get copyWith => _$JwtKeyResponseCopyWithImpl<JwtKeyResponse>(this as JwtKeyResponse, _$identity);

  /// Serializes this JwtKeyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JwtKeyResponse&&const DeepCollectionEquality().equals(other.keys, keys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(keys));

@override
String toString() {
  return 'JwtKeyResponse(keys: $keys)';
}


}

/// @nodoc
abstract mixin class $JwtKeyResponseCopyWith<$Res>  {
  factory $JwtKeyResponseCopyWith(JwtKeyResponse value, $Res Function(JwtKeyResponse) _then) = _$JwtKeyResponseCopyWithImpl;
@useResult
$Res call({
 List<JwtKey> keys
});




}
/// @nodoc
class _$JwtKeyResponseCopyWithImpl<$Res>
    implements $JwtKeyResponseCopyWith<$Res> {
  _$JwtKeyResponseCopyWithImpl(this._self, this._then);

  final JwtKeyResponse _self;
  final $Res Function(JwtKeyResponse) _then;

/// Create a copy of JwtKeyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keys = null,}) {
  return _then(_self.copyWith(
keys: null == keys ? _self.keys : keys // ignore: cast_nullable_to_non_nullable
as List<JwtKey>,
  ));
}

}


/// Adds pattern-matching-related methods to [JwtKeyResponse].
extension JwtKeyResponsePatterns on JwtKeyResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JwtKeyResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JwtKeyResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JwtKeyResponse value)  $default,){
final _that = this;
switch (_that) {
case _JwtKeyResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JwtKeyResponse value)?  $default,){
final _that = this;
switch (_that) {
case _JwtKeyResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<JwtKey> keys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JwtKeyResponse() when $default != null:
return $default(_that.keys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<JwtKey> keys)  $default,) {final _that = this;
switch (_that) {
case _JwtKeyResponse():
return $default(_that.keys);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<JwtKey> keys)?  $default,) {final _that = this;
switch (_that) {
case _JwtKeyResponse() when $default != null:
return $default(_that.keys);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JwtKeyResponse implements JwtKeyResponse {
  const _JwtKeyResponse({required final  List<JwtKey> keys}): _keys = keys;
  factory _JwtKeyResponse.fromJson(Map<String, dynamic> json) => _$JwtKeyResponseFromJson(json);

 final  List<JwtKey> _keys;
@override List<JwtKey> get keys {
  if (_keys is EqualUnmodifiableListView) return _keys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keys);
}


/// Create a copy of JwtKeyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JwtKeyResponseCopyWith<_JwtKeyResponse> get copyWith => __$JwtKeyResponseCopyWithImpl<_JwtKeyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JwtKeyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JwtKeyResponse&&const DeepCollectionEquality().equals(other._keys, _keys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_keys));

@override
String toString() {
  return 'JwtKeyResponse(keys: $keys)';
}


}

/// @nodoc
abstract mixin class _$JwtKeyResponseCopyWith<$Res> implements $JwtKeyResponseCopyWith<$Res> {
  factory _$JwtKeyResponseCopyWith(_JwtKeyResponse value, $Res Function(_JwtKeyResponse) _then) = __$JwtKeyResponseCopyWithImpl;
@override @useResult
$Res call({
 List<JwtKey> keys
});




}
/// @nodoc
class __$JwtKeyResponseCopyWithImpl<$Res>
    implements _$JwtKeyResponseCopyWith<$Res> {
  __$JwtKeyResponseCopyWithImpl(this._self, this._then);

  final _JwtKeyResponse _self;
  final $Res Function(_JwtKeyResponse) _then;

/// Create a copy of JwtKeyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keys = null,}) {
  return _then(_JwtKeyResponse(
keys: null == keys ? _self._keys : keys // ignore: cast_nullable_to_non_nullable
as List<JwtKey>,
  ));
}


}

// dart format on
