// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_phone_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPhoneBody {

 String get phoneNumber; String get code; String? get disableSession; String? get updatePhoneNumber;
/// Create a copy of VerifyPhoneBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPhoneBodyCopyWith<VerifyPhoneBody> get copyWith => _$VerifyPhoneBodyCopyWithImpl<VerifyPhoneBody>(this as VerifyPhoneBody, _$identity);

  /// Serializes this VerifyPhoneBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.code, code) || other.code == code)&&(identical(other.disableSession, disableSession) || other.disableSession == disableSession)&&(identical(other.updatePhoneNumber, updatePhoneNumber) || other.updatePhoneNumber == updatePhoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,code,disableSession,updatePhoneNumber);

@override
String toString() {
  return 'VerifyPhoneBody(phoneNumber: $phoneNumber, code: $code, disableSession: $disableSession, updatePhoneNumber: $updatePhoneNumber)';
}


}

/// @nodoc
abstract mixin class $VerifyPhoneBodyCopyWith<$Res>  {
  factory $VerifyPhoneBodyCopyWith(VerifyPhoneBody value, $Res Function(VerifyPhoneBody) _then) = _$VerifyPhoneBodyCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String code, String? disableSession, String? updatePhoneNumber
});




}
/// @nodoc
class _$VerifyPhoneBodyCopyWithImpl<$Res>
    implements $VerifyPhoneBodyCopyWith<$Res> {
  _$VerifyPhoneBodyCopyWithImpl(this._self, this._then);

  final VerifyPhoneBody _self;
  final $Res Function(VerifyPhoneBody) _then;

/// Create a copy of VerifyPhoneBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? code = null,Object? disableSession = freezed,Object? updatePhoneNumber = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,disableSession: freezed == disableSession ? _self.disableSession : disableSession // ignore: cast_nullable_to_non_nullable
as String?,updatePhoneNumber: freezed == updatePhoneNumber ? _self.updatePhoneNumber : updatePhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPhoneBody].
extension VerifyPhoneBodyPatterns on VerifyPhoneBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPhoneBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPhoneBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPhoneBody value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPhoneBody value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  String code,  String? disableSession,  String? updatePhoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPhoneBody() when $default != null:
return $default(_that.phoneNumber,_that.code,_that.disableSession,_that.updatePhoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  String code,  String? disableSession,  String? updatePhoneNumber)  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneBody():
return $default(_that.phoneNumber,_that.code,_that.disableSession,_that.updatePhoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  String code,  String? disableSession,  String? updatePhoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneBody() when $default != null:
return $default(_that.phoneNumber,_that.code,_that.disableSession,_that.updatePhoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPhoneBody implements VerifyPhoneBody {
  const _VerifyPhoneBody({required this.phoneNumber, required this.code, this.disableSession, this.updatePhoneNumber});
  factory _VerifyPhoneBody.fromJson(Map<String, dynamic> json) => _$VerifyPhoneBodyFromJson(json);

@override final  String phoneNumber;
@override final  String code;
@override final  String? disableSession;
@override final  String? updatePhoneNumber;

/// Create a copy of VerifyPhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPhoneBodyCopyWith<_VerifyPhoneBody> get copyWith => __$VerifyPhoneBodyCopyWithImpl<_VerifyPhoneBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPhoneBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.code, code) || other.code == code)&&(identical(other.disableSession, disableSession) || other.disableSession == disableSession)&&(identical(other.updatePhoneNumber, updatePhoneNumber) || other.updatePhoneNumber == updatePhoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,code,disableSession,updatePhoneNumber);

@override
String toString() {
  return 'VerifyPhoneBody(phoneNumber: $phoneNumber, code: $code, disableSession: $disableSession, updatePhoneNumber: $updatePhoneNumber)';
}


}

/// @nodoc
abstract mixin class _$VerifyPhoneBodyCopyWith<$Res> implements $VerifyPhoneBodyCopyWith<$Res> {
  factory _$VerifyPhoneBodyCopyWith(_VerifyPhoneBody value, $Res Function(_VerifyPhoneBody) _then) = __$VerifyPhoneBodyCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String code, String? disableSession, String? updatePhoneNumber
});




}
/// @nodoc
class __$VerifyPhoneBodyCopyWithImpl<$Res>
    implements _$VerifyPhoneBodyCopyWith<$Res> {
  __$VerifyPhoneBodyCopyWithImpl(this._self, this._then);

  final _VerifyPhoneBody _self;
  final $Res Function(_VerifyPhoneBody) _then;

/// Create a copy of VerifyPhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? code = null,Object? disableSession = freezed,Object? updatePhoneNumber = freezed,}) {
  return _then(_VerifyPhoneBody(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,disableSession: freezed == disableSession ? _self.disableSession : disableSession // ignore: cast_nullable_to_non_nullable
as String?,updatePhoneNumber: freezed == updatePhoneNumber ? _self.updatePhoneNumber : updatePhoneNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
