// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_permission_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckPermissionResponse {

 bool get success; String? get error;
/// Create a copy of CheckPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckPermissionResponseCopyWith<CheckPermissionResponse> get copyWith => _$CheckPermissionResponseCopyWithImpl<CheckPermissionResponse>(this as CheckPermissionResponse, _$identity);

  /// Serializes this CheckPermissionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckPermissionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,error);

@override
String toString() {
  return 'CheckPermissionResponse(success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class $CheckPermissionResponseCopyWith<$Res>  {
  factory $CheckPermissionResponseCopyWith(CheckPermissionResponse value, $Res Function(CheckPermissionResponse) _then) = _$CheckPermissionResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? error
});




}
/// @nodoc
class _$CheckPermissionResponseCopyWithImpl<$Res>
    implements $CheckPermissionResponseCopyWith<$Res> {
  _$CheckPermissionResponseCopyWithImpl(this._self, this._then);

  final CheckPermissionResponse _self;
  final $Res Function(CheckPermissionResponse) _then;

/// Create a copy of CheckPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckPermissionResponse].
extension CheckPermissionResponsePatterns on CheckPermissionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckPermissionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckPermissionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckPermissionResponse value)  $default,){
final _that = this;
switch (_that) {
case _CheckPermissionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckPermissionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CheckPermissionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckPermissionResponse() when $default != null:
return $default(_that.success,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CheckPermissionResponse():
return $default(_that.success,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CheckPermissionResponse() when $default != null:
return $default(_that.success,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckPermissionResponse implements CheckPermissionResponse {
  const _CheckPermissionResponse({required this.success, this.error});
  factory _CheckPermissionResponse.fromJson(Map<String, dynamic> json) => _$CheckPermissionResponseFromJson(json);

@override final  bool success;
@override final  String? error;

/// Create a copy of CheckPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckPermissionResponseCopyWith<_CheckPermissionResponse> get copyWith => __$CheckPermissionResponseCopyWithImpl<_CheckPermissionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckPermissionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckPermissionResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,error);

@override
String toString() {
  return 'CheckPermissionResponse(success: $success, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CheckPermissionResponseCopyWith<$Res> implements $CheckPermissionResponseCopyWith<$Res> {
  factory _$CheckPermissionResponseCopyWith(_CheckPermissionResponse value, $Res Function(_CheckPermissionResponse) _then) = __$CheckPermissionResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? error
});




}
/// @nodoc
class __$CheckPermissionResponseCopyWithImpl<$Res>
    implements _$CheckPermissionResponseCopyWith<$Res> {
  __$CheckPermissionResponseCopyWithImpl(this._self, this._then);

  final _CheckPermissionResponse _self;
  final $Res Function(_CheckPermissionResponse) _then;

/// Create a copy of CheckPermissionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? error = freezed,}) {
  return _then(_CheckPermissionResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
