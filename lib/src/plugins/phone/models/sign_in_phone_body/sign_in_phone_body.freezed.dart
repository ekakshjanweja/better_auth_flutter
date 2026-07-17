// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_phone_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInPhoneBody {

 String get phoneNumber; String get password; bool? get rememberMe;
/// Create a copy of SignInPhoneBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInPhoneBodyCopyWith<SignInPhoneBody> get copyWith => _$SignInPhoneBodyCopyWithImpl<SignInPhoneBody>(this as SignInPhoneBody, _$identity);

  /// Serializes this SignInPhoneBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInPhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,password,rememberMe);

@override
String toString() {
  return 'SignInPhoneBody(phoneNumber: $phoneNumber, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class $SignInPhoneBodyCopyWith<$Res>  {
  factory $SignInPhoneBodyCopyWith(SignInPhoneBody value, $Res Function(SignInPhoneBody) _then) = _$SignInPhoneBodyCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String password, bool? rememberMe
});




}
/// @nodoc
class _$SignInPhoneBodyCopyWithImpl<$Res>
    implements $SignInPhoneBodyCopyWith<$Res> {
  _$SignInPhoneBodyCopyWithImpl(this._self, this._then);

  final SignInPhoneBody _self;
  final $Res Function(SignInPhoneBody) _then;

/// Create a copy of SignInPhoneBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInPhoneBody].
extension SignInPhoneBodyPatterns on SignInPhoneBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignInPhoneBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignInPhoneBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignInPhoneBody value)  $default,){
final _that = this;
switch (_that) {
case _SignInPhoneBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignInPhoneBody value)?  $default,){
final _that = this;
switch (_that) {
case _SignInPhoneBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  String password,  bool? rememberMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignInPhoneBody() when $default != null:
return $default(_that.phoneNumber,_that.password,_that.rememberMe);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  String password,  bool? rememberMe)  $default,) {final _that = this;
switch (_that) {
case _SignInPhoneBody():
return $default(_that.phoneNumber,_that.password,_that.rememberMe);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  String password,  bool? rememberMe)?  $default,) {final _that = this;
switch (_that) {
case _SignInPhoneBody() when $default != null:
return $default(_that.phoneNumber,_that.password,_that.rememberMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignInPhoneBody implements SignInPhoneBody {
  const _SignInPhoneBody({required this.phoneNumber, required this.password, this.rememberMe});
  factory _SignInPhoneBody.fromJson(Map<String, dynamic> json) => _$SignInPhoneBodyFromJson(json);

@override final  String phoneNumber;
@override final  String password;
@override final  bool? rememberMe;

/// Create a copy of SignInPhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInPhoneBodyCopyWith<_SignInPhoneBody> get copyWith => __$SignInPhoneBodyCopyWithImpl<_SignInPhoneBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInPhoneBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInPhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,password,rememberMe);

@override
String toString() {
  return 'SignInPhoneBody(phoneNumber: $phoneNumber, password: $password, rememberMe: $rememberMe)';
}


}

/// @nodoc
abstract mixin class _$SignInPhoneBodyCopyWith<$Res> implements $SignInPhoneBodyCopyWith<$Res> {
  factory _$SignInPhoneBodyCopyWith(_SignInPhoneBody value, $Res Function(_SignInPhoneBody) _then) = __$SignInPhoneBodyCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String password, bool? rememberMe
});




}
/// @nodoc
class __$SignInPhoneBodyCopyWithImpl<$Res>
    implements _$SignInPhoneBodyCopyWith<$Res> {
  __$SignInPhoneBodyCopyWithImpl(this._self, this._then);

  final _SignInPhoneBody _self;
  final $Res Function(_SignInPhoneBody) _then;

/// Create a copy of SignInPhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? password = null,Object? rememberMe = freezed,}) {
  return _then(_SignInPhoneBody(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: freezed == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
