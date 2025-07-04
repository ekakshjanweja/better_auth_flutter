// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeEmailRequest {

 String get newEmail; String? get callbackURL;
/// Create a copy of ChangeEmailRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeEmailRequestCopyWith<ChangeEmailRequest> get copyWith => _$ChangeEmailRequestCopyWithImpl<ChangeEmailRequest>(this as ChangeEmailRequest, _$identity);

  /// Serializes this ChangeEmailRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeEmailRequest&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newEmail,callbackURL);

@override
String toString() {
  return 'ChangeEmailRequest(newEmail: $newEmail, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class $ChangeEmailRequestCopyWith<$Res>  {
  factory $ChangeEmailRequestCopyWith(ChangeEmailRequest value, $Res Function(ChangeEmailRequest) _then) = _$ChangeEmailRequestCopyWithImpl;
@useResult
$Res call({
 String newEmail, String? callbackURL
});




}
/// @nodoc
class _$ChangeEmailRequestCopyWithImpl<$Res>
    implements $ChangeEmailRequestCopyWith<$Res> {
  _$ChangeEmailRequestCopyWithImpl(this._self, this._then);

  final ChangeEmailRequest _self;
  final $Res Function(ChangeEmailRequest) _then;

/// Create a copy of ChangeEmailRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newEmail = null,Object? callbackURL = freezed,}) {
  return _then(_self.copyWith(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeEmailRequest].
extension ChangeEmailRequestPatterns on ChangeEmailRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeEmailRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeEmailRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeEmailRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChangeEmailRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeEmailRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeEmailRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String newEmail,  String? callbackURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeEmailRequest() when $default != null:
return $default(_that.newEmail,_that.callbackURL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String newEmail,  String? callbackURL)  $default,) {final _that = this;
switch (_that) {
case _ChangeEmailRequest():
return $default(_that.newEmail,_that.callbackURL);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String newEmail,  String? callbackURL)?  $default,) {final _that = this;
switch (_that) {
case _ChangeEmailRequest() when $default != null:
return $default(_that.newEmail,_that.callbackURL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeEmailRequest implements ChangeEmailRequest {
  const _ChangeEmailRequest({required this.newEmail, this.callbackURL});
  factory _ChangeEmailRequest.fromJson(Map<String, dynamic> json) => _$ChangeEmailRequestFromJson(json);

@override final  String newEmail;
@override final  String? callbackURL;

/// Create a copy of ChangeEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeEmailRequestCopyWith<_ChangeEmailRequest> get copyWith => __$ChangeEmailRequestCopyWithImpl<_ChangeEmailRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeEmailRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeEmailRequest&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newEmail,callbackURL);

@override
String toString() {
  return 'ChangeEmailRequest(newEmail: $newEmail, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class _$ChangeEmailRequestCopyWith<$Res> implements $ChangeEmailRequestCopyWith<$Res> {
  factory _$ChangeEmailRequestCopyWith(_ChangeEmailRequest value, $Res Function(_ChangeEmailRequest) _then) = __$ChangeEmailRequestCopyWithImpl;
@override @useResult
$Res call({
 String newEmail, String? callbackURL
});




}
/// @nodoc
class __$ChangeEmailRequestCopyWithImpl<$Res>
    implements _$ChangeEmailRequestCopyWith<$Res> {
  __$ChangeEmailRequestCopyWithImpl(this._self, this._then);

  final _ChangeEmailRequest _self;
  final $Res Function(_ChangeEmailRequest) _then;

/// Create a copy of ChangeEmailRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newEmail = null,Object? callbackURL = freezed,}) {
  return _then(_ChangeEmailRequest(
newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
