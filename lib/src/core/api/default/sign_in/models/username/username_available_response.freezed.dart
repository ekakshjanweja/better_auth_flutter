// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username_available_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsernameAvailableResponse {

 bool get available;
/// Create a copy of UsernameAvailableResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsernameAvailableResponseCopyWith<UsernameAvailableResponse> get copyWith => _$UsernameAvailableResponseCopyWithImpl<UsernameAvailableResponse>(this as UsernameAvailableResponse, _$identity);

  /// Serializes this UsernameAvailableResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UsernameAvailableResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsernameAvailableResponse&&(identical(other.available, _this.available) || other.available == _this.available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UsernameAvailableResponse;
  return Object.hash(runtimeType,_this.available);
}

@override
String toString() {
  final _this = this as UsernameAvailableResponse;
  return 'UsernameAvailableResponse(available: ${_this.available})';
}


}

/// @nodoc
abstract mixin class $UsernameAvailableResponseCopyWith<$Res>  {
  factory $UsernameAvailableResponseCopyWith(UsernameAvailableResponse value, $Res Function(UsernameAvailableResponse) _then) = _$UsernameAvailableResponseCopyWithImpl;
@useResult
$Res call({
 bool available
});




}
/// @nodoc
class _$UsernameAvailableResponseCopyWithImpl<$Res>
    implements $UsernameAvailableResponseCopyWith<$Res> {
  _$UsernameAvailableResponseCopyWithImpl(this._self, this._then);

  final UsernameAvailableResponse _self;
  final $Res Function(UsernameAvailableResponse) _then;

/// Create a copy of UsernameAvailableResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = null,}) {
  return _then(UsernameAvailableResponse(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UsernameAvailableResponse].
extension UsernameAvailableResponsePatterns on UsernameAvailableResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsernameAvailableResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsernameAvailableResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsernameAvailableResponse value)  $default,){
final _that = this;
switch (_that) {
case _UsernameAvailableResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsernameAvailableResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UsernameAvailableResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool available)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsernameAvailableResponse() when $default != null:
return $default(_that.available);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool available)  $default,) {final _that = this;
switch (_that) {
case _UsernameAvailableResponse():
return $default(_that.available);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool available)?  $default,) {final _that = this;
switch (_that) {
case _UsernameAvailableResponse() when $default != null:
return $default(_that.available);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsernameAvailableResponse implements UsernameAvailableResponse {
  const _UsernameAvailableResponse({this.available = false});
  factory _UsernameAvailableResponse.fromJson(Map<String, dynamic> json) => _$UsernameAvailableResponseFromJson(json);

@override@JsonKey() final  bool available;

/// Create a copy of UsernameAvailableResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsernameAvailableResponseCopyWith<_UsernameAvailableResponse> get copyWith => __$UsernameAvailableResponseCopyWithImpl<_UsernameAvailableResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsernameAvailableResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsernameAvailableResponse&&(identical(other.available, available) || other.available == available));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,available);
}

@override
String toString() {
    return 'UsernameAvailableResponse(available: $available)';
}


}

/// @nodoc
abstract mixin class _$UsernameAvailableResponseCopyWith<$Res> implements $UsernameAvailableResponseCopyWith<$Res> {
  factory _$UsernameAvailableResponseCopyWith(_UsernameAvailableResponse value, $Res Function(_UsernameAvailableResponse) _then) = __$UsernameAvailableResponseCopyWithImpl;
@override @useResult
$Res call({
 bool available
});




}
/// @nodoc
class __$UsernameAvailableResponseCopyWithImpl<$Res>
    implements _$UsernameAvailableResponseCopyWith<$Res> {
  __$UsernameAvailableResponseCopyWithImpl(this._self, this._then);

  final _UsernameAvailableResponse _self;
  final $Res Function(_UsernameAvailableResponse) _then;

/// Create a copy of UsernameAvailableResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = null,}) {
  return _then(_UsernameAvailableResponse(
available: null == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
