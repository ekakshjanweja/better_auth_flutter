// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhoneBody {

 String get phoneNumber;
/// Create a copy of PhoneBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneBodyCopyWith<PhoneBody> get copyWith => _$PhoneBodyCopyWithImpl<PhoneBody>(this as PhoneBody, _$identity);

  /// Serializes this PhoneBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'PhoneBody(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $PhoneBodyCopyWith<$Res>  {
  factory $PhoneBodyCopyWith(PhoneBody value, $Res Function(PhoneBody) _then) = _$PhoneBodyCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$PhoneBodyCopyWithImpl<$Res>
    implements $PhoneBodyCopyWith<$Res> {
  _$PhoneBodyCopyWithImpl(this._self, this._then);

  final PhoneBody _self;
  final $Res Function(PhoneBody) _then;

/// Create a copy of PhoneBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneBody].
extension PhoneBodyPatterns on PhoneBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhoneBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhoneBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhoneBody value)  $default,){
final _that = this;
switch (_that) {
case _PhoneBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhoneBody value)?  $default,){
final _that = this;
switch (_that) {
case _PhoneBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhoneBody() when $default != null:
return $default(_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber)  $default,) {final _that = this;
switch (_that) {
case _PhoneBody():
return $default(_that.phoneNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _PhoneBody() when $default != null:
return $default(_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhoneBody implements PhoneBody {
  const _PhoneBody({required this.phoneNumber});
  factory _PhoneBody.fromJson(Map<String, dynamic> json) => _$PhoneBodyFromJson(json);

@override final  String phoneNumber;

/// Create a copy of PhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhoneBodyCopyWith<_PhoneBody> get copyWith => __$PhoneBodyCopyWithImpl<_PhoneBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhoneBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhoneBody&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'PhoneBody(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class _$PhoneBodyCopyWith<$Res> implements $PhoneBodyCopyWith<$Res> {
  factory _$PhoneBodyCopyWith(_PhoneBody value, $Res Function(_PhoneBody) _then) = __$PhoneBodyCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class __$PhoneBodyCopyWithImpl<$Res>
    implements _$PhoneBodyCopyWith<$Res> {
  __$PhoneBodyCopyWithImpl(this._self, this._then);

  final _PhoneBody _self;
  final $Res Function(_PhoneBody) _then;

/// Create a copy of PhoneBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(_PhoneBody(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
