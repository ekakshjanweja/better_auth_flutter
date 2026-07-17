// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyEmailResponse {

 User? get user; bool get status; String? get required;
/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyEmailResponseCopyWith<VerifyEmailResponse> get copyWith => _$VerifyEmailResponseCopyWithImpl<VerifyEmailResponse>(this as VerifyEmailResponse, _$identity);

  /// Serializes this VerifyEmailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEmailResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,status,required);

@override
String toString() {
  return 'VerifyEmailResponse(user: $user, status: $status, required: $required)';
}


}

/// @nodoc
abstract mixin class $VerifyEmailResponseCopyWith<$Res>  {
  factory $VerifyEmailResponseCopyWith(VerifyEmailResponse value, $Res Function(VerifyEmailResponse) _then) = _$VerifyEmailResponseCopyWithImpl;
@useResult
$Res call({
 User? user, bool status, String? required
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$VerifyEmailResponseCopyWithImpl<$Res>
    implements $VerifyEmailResponseCopyWith<$Res> {
  _$VerifyEmailResponseCopyWithImpl(this._self, this._then);

  final VerifyEmailResponse _self;
  final $Res Function(VerifyEmailResponse) _then;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? status = null,Object? required = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyEmailResponse].
extension VerifyEmailResponsePatterns on VerifyEmailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyEmailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyEmailResponse value)  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyEmailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  bool status,  String? required)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
return $default(_that.user,_that.status,_that.required);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  bool status,  String? required)  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailResponse():
return $default(_that.user,_that.status,_that.required);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  bool status,  String? required)?  $default,) {final _that = this;
switch (_that) {
case _VerifyEmailResponse() when $default != null:
return $default(_that.user,_that.status,_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyEmailResponse implements VerifyEmailResponse {
  const _VerifyEmailResponse({required this.user, required this.status, this.required});
  factory _VerifyEmailResponse.fromJson(Map<String, dynamic> json) => _$VerifyEmailResponseFromJson(json);

@override final  User? user;
@override final  bool status;
@override final  String? required;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyEmailResponseCopyWith<_VerifyEmailResponse> get copyWith => __$VerifyEmailResponseCopyWithImpl<_VerifyEmailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyEmailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status)&&(identical(other.required, required) || other.required == required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,status,required);

@override
String toString() {
  return 'VerifyEmailResponse(user: $user, status: $status, required: $required)';
}


}

/// @nodoc
abstract mixin class _$VerifyEmailResponseCopyWith<$Res> implements $VerifyEmailResponseCopyWith<$Res> {
  factory _$VerifyEmailResponseCopyWith(_VerifyEmailResponse value, $Res Function(_VerifyEmailResponse) _then) = __$VerifyEmailResponseCopyWithImpl;
@override @useResult
$Res call({
 User? user, bool status, String? required
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$VerifyEmailResponseCopyWithImpl<$Res>
    implements _$VerifyEmailResponseCopyWith<$Res> {
  __$VerifyEmailResponseCopyWithImpl(this._self, this._then);

  final _VerifyEmailResponse _self;
  final $Res Function(_VerifyEmailResponse) _then;

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? status = null,Object? required = freezed,}) {
  return _then(_VerifyEmailResponse(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of VerifyEmailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
