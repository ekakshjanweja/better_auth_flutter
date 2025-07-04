// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialTokenRequest {

 String get providerId; String? get accountId; String? get userId;
/// Create a copy of SocialTokenRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialTokenRequestCopyWith<SocialTokenRequest> get copyWith => _$SocialTokenRequestCopyWithImpl<SocialTokenRequest>(this as SocialTokenRequest, _$identity);

  /// Serializes this SocialTokenRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialTokenRequest&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId,userId);

@override
String toString() {
  return 'SocialTokenRequest(providerId: $providerId, accountId: $accountId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SocialTokenRequestCopyWith<$Res>  {
  factory $SocialTokenRequestCopyWith(SocialTokenRequest value, $Res Function(SocialTokenRequest) _then) = _$SocialTokenRequestCopyWithImpl;
@useResult
$Res call({
 String providerId, String? accountId, String? userId
});




}
/// @nodoc
class _$SocialTokenRequestCopyWithImpl<$Res>
    implements $SocialTokenRequestCopyWith<$Res> {
  _$SocialTokenRequestCopyWithImpl(this._self, this._then);

  final SocialTokenRequest _self;
  final $Res Function(SocialTokenRequest) _then;

/// Create a copy of SocialTokenRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? providerId = null,Object? accountId = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialTokenRequest].
extension SocialTokenRequestPatterns on SocialTokenRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialTokenRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialTokenRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialTokenRequest value)  $default,){
final _that = this;
switch (_that) {
case _SocialTokenRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialTokenRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SocialTokenRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String providerId,  String? accountId,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialTokenRequest() when $default != null:
return $default(_that.providerId,_that.accountId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String providerId,  String? accountId,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _SocialTokenRequest():
return $default(_that.providerId,_that.accountId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String providerId,  String? accountId,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _SocialTokenRequest() when $default != null:
return $default(_that.providerId,_that.accountId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialTokenRequest implements SocialTokenRequest {
  const _SocialTokenRequest({required this.providerId, this.accountId, this.userId});
  factory _SocialTokenRequest.fromJson(Map<String, dynamic> json) => _$SocialTokenRequestFromJson(json);

@override final  String providerId;
@override final  String? accountId;
@override final  String? userId;

/// Create a copy of SocialTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialTokenRequestCopyWith<_SocialTokenRequest> get copyWith => __$SocialTokenRequestCopyWithImpl<_SocialTokenRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialTokenRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialTokenRequest&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,providerId,accountId,userId);

@override
String toString() {
  return 'SocialTokenRequest(providerId: $providerId, accountId: $accountId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SocialTokenRequestCopyWith<$Res> implements $SocialTokenRequestCopyWith<$Res> {
  factory _$SocialTokenRequestCopyWith(_SocialTokenRequest value, $Res Function(_SocialTokenRequest) _then) = __$SocialTokenRequestCopyWithImpl;
@override @useResult
$Res call({
 String providerId, String? accountId, String? userId
});




}
/// @nodoc
class __$SocialTokenRequestCopyWithImpl<$Res>
    implements _$SocialTokenRequestCopyWith<$Res> {
  __$SocialTokenRequestCopyWithImpl(this._self, this._then);

  final _SocialTokenRequest _self;
  final $Res Function(_SocialTokenRequest) _then;

/// Create a copy of SocialTokenRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? providerId = null,Object? accountId = freezed,Object? userId = freezed,}) {
  return _then(_SocialTokenRequest(
providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
