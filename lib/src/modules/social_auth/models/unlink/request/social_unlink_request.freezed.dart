// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_unlink_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialUnlinkRequest {

 String get providerId; String? get accountId;
/// Create a copy of SocialUnlinkRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialUnlinkRequestCopyWith<SocialUnlinkRequest> get copyWith => _$SocialUnlinkRequestCopyWithImpl<SocialUnlinkRequest>(this as SocialUnlinkRequest, _$identity);

  /// Serializes this SocialUnlinkRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialUnlinkRequest&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId);

@override
String toString() {
  return 'SocialUnlinkRequest(providerId: $providerId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class $SocialUnlinkRequestCopyWith<$Res>  {
  factory $SocialUnlinkRequestCopyWith(SocialUnlinkRequest value, $Res Function(SocialUnlinkRequest) _then) = _$SocialUnlinkRequestCopyWithImpl;
@useResult
$Res call({
 String providerId, String? accountId
});




}
/// @nodoc
class _$SocialUnlinkRequestCopyWithImpl<$Res>
    implements $SocialUnlinkRequestCopyWith<$Res> {
  _$SocialUnlinkRequestCopyWithImpl(this._self, this._then);

  final SocialUnlinkRequest _self;
  final $Res Function(SocialUnlinkRequest) _then;

/// Create a copy of SocialUnlinkRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerId = null,Object? accountId = freezed,}) {
  return _then(_self.copyWith(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialUnlinkRequest].
extension SocialUnlinkRequestPatterns on SocialUnlinkRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialUnlinkRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialUnlinkRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialUnlinkRequest value)  $default,){
final _that = this;
switch (_that) {
case _SocialUnlinkRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialUnlinkRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SocialUnlinkRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String providerId,  String? accountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialUnlinkRequest() when $default != null:
return $default(_that.providerId,_that.accountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String providerId,  String? accountId)  $default,) {final _that = this;
switch (_that) {
case _SocialUnlinkRequest():
return $default(_that.providerId,_that.accountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String providerId,  String? accountId)?  $default,) {final _that = this;
switch (_that) {
case _SocialUnlinkRequest() when $default != null:
return $default(_that.providerId,_that.accountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialUnlinkRequest implements SocialUnlinkRequest {
  const _SocialUnlinkRequest({required this.providerId, this.accountId});
  factory _SocialUnlinkRequest.fromJson(Map<String, dynamic> json) => _$SocialUnlinkRequestFromJson(json);

@override final  String providerId;
@override final  String? accountId;

/// Create a copy of SocialUnlinkRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialUnlinkRequestCopyWith<_SocialUnlinkRequest> get copyWith => __$SocialUnlinkRequestCopyWithImpl<_SocialUnlinkRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialUnlinkRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialUnlinkRequest&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId);

@override
String toString() {
  return 'SocialUnlinkRequest(providerId: $providerId, accountId: $accountId)';
}


}

/// @nodoc
abstract mixin class _$SocialUnlinkRequestCopyWith<$Res> implements $SocialUnlinkRequestCopyWith<$Res> {
  factory _$SocialUnlinkRequestCopyWith(_SocialUnlinkRequest value, $Res Function(_SocialUnlinkRequest) _then) = __$SocialUnlinkRequestCopyWithImpl;
@override @useResult
$Res call({
 String providerId, String? accountId
});




}
/// @nodoc
class __$SocialUnlinkRequestCopyWithImpl<$Res>
    implements _$SocialUnlinkRequestCopyWith<$Res> {
  __$SocialUnlinkRequestCopyWithImpl(this._self, this._then);

  final _SocialUnlinkRequest _self;
  final $Res Function(_SocialUnlinkRequest) _then;

/// Create a copy of SocialUnlinkRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerId = null,Object? accountId = freezed,}) {
  return _then(_SocialUnlinkRequest(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
