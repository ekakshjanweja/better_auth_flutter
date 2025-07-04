// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForgetPasswordRequest {

 String get email; String? get redirectTo;
/// Create a copy of ForgetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgetPasswordRequestCopyWith<ForgetPasswordRequest> get copyWith => _$ForgetPasswordRequestCopyWithImpl<ForgetPasswordRequest>(this as ForgetPasswordRequest, _$identity);

  /// Serializes this ForgetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgetPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,redirectTo);

@override
String toString() {
  return 'ForgetPasswordRequest(email: $email, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class $ForgetPasswordRequestCopyWith<$Res>  {
  factory $ForgetPasswordRequestCopyWith(ForgetPasswordRequest value, $Res Function(ForgetPasswordRequest) _then) = _$ForgetPasswordRequestCopyWithImpl;
@useResult
$Res call({
 String email, String? redirectTo
});




}
/// @nodoc
class _$ForgetPasswordRequestCopyWithImpl<$Res>
    implements $ForgetPasswordRequestCopyWith<$Res> {
  _$ForgetPasswordRequestCopyWithImpl(this._self, this._then);

  final ForgetPasswordRequest _self;
  final $Res Function(ForgetPasswordRequest) _then;

/// Create a copy of ForgetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? redirectTo = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgetPasswordRequest].
extension ForgetPasswordRequestPatterns on ForgetPasswordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgetPasswordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgetPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgetPasswordRequest value)  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgetPasswordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ForgetPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String? redirectTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgetPasswordRequest() when $default != null:
return $default(_that.email,_that.redirectTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String? redirectTo)  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordRequest():
return $default(_that.email,_that.redirectTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String? redirectTo)?  $default,) {final _that = this;
switch (_that) {
case _ForgetPasswordRequest() when $default != null:
return $default(_that.email,_that.redirectTo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgetPasswordRequest implements ForgetPasswordRequest {
  const _ForgetPasswordRequest({required this.email, this.redirectTo});
  factory _ForgetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ForgetPasswordRequestFromJson(json);

@override final  String email;
@override final  String? redirectTo;

/// Create a copy of ForgetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgetPasswordRequestCopyWith<_ForgetPasswordRequest> get copyWith => __$ForgetPasswordRequestCopyWithImpl<_ForgetPasswordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgetPasswordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgetPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.redirectTo, redirectTo) || other.redirectTo == redirectTo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,redirectTo);

@override
String toString() {
  return 'ForgetPasswordRequest(email: $email, redirectTo: $redirectTo)';
}


}

/// @nodoc
abstract mixin class _$ForgetPasswordRequestCopyWith<$Res> implements $ForgetPasswordRequestCopyWith<$Res> {
  factory _$ForgetPasswordRequestCopyWith(_ForgetPasswordRequest value, $Res Function(_ForgetPasswordRequest) _then) = __$ForgetPasswordRequestCopyWithImpl;
@override @useResult
$Res call({
 String email, String? redirectTo
});




}
/// @nodoc
class __$ForgetPasswordRequestCopyWithImpl<$Res>
    implements _$ForgetPasswordRequestCopyWith<$Res> {
  __$ForgetPasswordRequestCopyWithImpl(this._self, this._then);

  final _ForgetPasswordRequest _self;
  final $Res Function(_ForgetPasswordRequest) _then;

/// Create a copy of ForgetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? redirectTo = freezed,}) {
  return _then(_ForgetPasswordRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,redirectTo: freezed == redirectTo ? _self.redirectTo : redirectTo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
