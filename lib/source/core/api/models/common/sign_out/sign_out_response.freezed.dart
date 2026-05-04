// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_out_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignOutResponse {

 bool get success;
/// Create a copy of SignOutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignOutResponseCopyWith<SignOutResponse> get copyWith => _$SignOutResponseCopyWithImpl<SignOutResponse>(this as SignOutResponse, _$identity);

  /// Serializes this SignOutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutResponse&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success);

@override
String toString() {
  return 'SignOutResponse(success: $success)';
}


}

/// @nodoc
abstract mixin class $SignOutResponseCopyWith<$Res>  {
  factory $SignOutResponseCopyWith(SignOutResponse value, $Res Function(SignOutResponse) _then) = _$SignOutResponseCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SignOutResponseCopyWithImpl<$Res>
    implements $SignOutResponseCopyWith<$Res> {
  _$SignOutResponseCopyWithImpl(this._self, this._then);

  final SignOutResponse _self;
  final $Res Function(SignOutResponse) _then;

/// Create a copy of SignOutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SignOutResponse].
extension SignOutResponsePatterns on SignOutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignOutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignOutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignOutResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignOutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignOutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignOutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignOutResponse() when $default != null:
return $default(_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success)  $default,) {final _that = this;
switch (_that) {
case _SignOutResponse():
return $default(_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success)?  $default,) {final _that = this;
switch (_that) {
case _SignOutResponse() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignOutResponse implements SignOutResponse {
  const _SignOutResponse({this.success = false});
  factory _SignOutResponse.fromJson(Map<String, dynamic> json) => _$SignOutResponseFromJson(json);

@override@JsonKey() final  bool success;

/// Create a copy of SignOutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignOutResponseCopyWith<_SignOutResponse> get copyWith => __$SignOutResponseCopyWithImpl<_SignOutResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignOutResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOutResponse&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success);

@override
String toString() {
  return 'SignOutResponse(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SignOutResponseCopyWith<$Res> implements $SignOutResponseCopyWith<$Res> {
  factory _$SignOutResponseCopyWith(_SignOutResponse value, $Res Function(_SignOutResponse) _then) = __$SignOutResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SignOutResponseCopyWithImpl<$Res>
    implements _$SignOutResponseCopyWith<$Res> {
  __$SignOutResponseCopyWithImpl(this._self, this._then);

  final _SignOutResponse _self;
  final $Res Function(_SignOutResponse) _then;

/// Create a copy of SignOutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SignOutResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
