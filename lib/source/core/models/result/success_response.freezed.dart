// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuccessResponse {

 bool get success; String? get message;
/// Create a copy of SuccessResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessResponseCopyWith<SuccessResponse> get copyWith => _$SuccessResponseCopyWithImpl<SuccessResponse>(this as SuccessResponse, _$identity);

  /// Serializes this SuccessResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'SuccessResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class $SuccessResponseCopyWith<$Res>  {
  factory $SuccessResponseCopyWith(SuccessResponse value, $Res Function(SuccessResponse) _then) = _$SuccessResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._self, this._then);

  final SuccessResponse _self;
  final $Res Function(SuccessResponse) _then;

/// Create a copy of SuccessResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SuccessResponse].
extension SuccessResponsePatterns on SuccessResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuccessResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuccessResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuccessResponse value)  $default,){
final _that = this;
switch (_that) {
case _SuccessResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuccessResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SuccessResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuccessResponse() when $default != null:
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String? message)  $default,) {final _that = this;
switch (_that) {
case _SuccessResponse():
return $default(_that.success,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _SuccessResponse() when $default != null:
return $default(_that.success,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuccessResponse implements SuccessResponse {
  const _SuccessResponse({required this.success, this.message});
  factory _SuccessResponse.fromJson(Map<String, dynamic> json) => _$SuccessResponseFromJson(json);

@override final  bool success;
@override final  String? message;

/// Create a copy of SuccessResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessResponseCopyWith<_SuccessResponse> get copyWith => __$SuccessResponseCopyWithImpl<_SuccessResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuccessResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message);

@override
String toString() {
  return 'SuccessResponse(success: $success, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessResponseCopyWith<$Res> implements $SuccessResponseCopyWith<$Res> {
  factory _$SuccessResponseCopyWith(_SuccessResponse value, $Res Function(_SuccessResponse) _then) = __$SuccessResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String? message
});




}
/// @nodoc
class __$SuccessResponseCopyWithImpl<$Res>
    implements _$SuccessResponseCopyWith<$Res> {
  __$SuccessResponseCopyWithImpl(this._self, this._then);

  final _SuccessResponse _self;
  final $Res Function(_SuccessResponse) _then;

/// Create a copy of SuccessResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,}) {
  return _then(_SuccessResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
