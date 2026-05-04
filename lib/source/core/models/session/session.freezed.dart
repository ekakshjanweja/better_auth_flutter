// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Session {

 String get id; String get token; DateTime get expiresAt; DateTime? get createdAt; DateTime? get updatedAt; String? get ipAddress; String? get userAgent; String get userId; String? get impersonatedBy; String? get activeOrganizationId;
/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCopyWith<Session> get copyWith => _$SessionCopyWithImpl<Session>(this as Session, _$identity);

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Session&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.impersonatedBy, impersonatedBy) || other.impersonatedBy == impersonatedBy)&&(identical(other.activeOrganizationId, activeOrganizationId) || other.activeOrganizationId == activeOrganizationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,expiresAt,createdAt,updatedAt,ipAddress,userAgent,userId,impersonatedBy,activeOrganizationId);

@override
String toString() {
  return 'Session(id: $id, token: $token, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, ipAddress: $ipAddress, userAgent: $userAgent, userId: $userId, impersonatedBy: $impersonatedBy, activeOrganizationId: $activeOrganizationId)';
}


}

/// @nodoc
abstract mixin class $SessionCopyWith<$Res>  {
  factory $SessionCopyWith(Session value, $Res Function(Session) _then) = _$SessionCopyWithImpl;
@useResult
$Res call({
 String id, String token, DateTime expiresAt, DateTime? createdAt, DateTime? updatedAt, String? ipAddress, String? userAgent, String userId, String? impersonatedBy, String? activeOrganizationId
});




}
/// @nodoc
class _$SessionCopyWithImpl<$Res>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._self, this._then);

  final Session _self;
  final $Res Function(Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? token = null,Object? expiresAt = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,Object? userId = null,Object? impersonatedBy = freezed,Object? activeOrganizationId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,impersonatedBy: freezed == impersonatedBy ? _self.impersonatedBy : impersonatedBy // ignore: cast_nullable_to_non_nullable
as String?,activeOrganizationId: freezed == activeOrganizationId ? _self.activeOrganizationId : activeOrganizationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Session].
extension SessionPatterns on Session {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Session value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Session value)  $default,){
final _that = this;
switch (_that) {
case _Session():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Session value)?  $default,){
final _that = this;
switch (_that) {
case _Session() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String token,  DateTime expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? ipAddress,  String? userAgent,  String userId,  String? impersonatedBy,  String? activeOrganizationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.token,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.ipAddress,_that.userAgent,_that.userId,_that.impersonatedBy,_that.activeOrganizationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String token,  DateTime expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? ipAddress,  String? userAgent,  String userId,  String? impersonatedBy,  String? activeOrganizationId)  $default,) {final _that = this;
switch (_that) {
case _Session():
return $default(_that.id,_that.token,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.ipAddress,_that.userAgent,_that.userId,_that.impersonatedBy,_that.activeOrganizationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String token,  DateTime expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  String? ipAddress,  String? userAgent,  String userId,  String? impersonatedBy,  String? activeOrganizationId)?  $default,) {final _that = this;
switch (_that) {
case _Session() when $default != null:
return $default(_that.id,_that.token,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.ipAddress,_that.userAgent,_that.userId,_that.impersonatedBy,_that.activeOrganizationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Session implements Session {
  const _Session({required this.id, required this.token, required this.expiresAt, this.createdAt, this.updatedAt, this.ipAddress, this.userAgent, required this.userId, this.impersonatedBy, this.activeOrganizationId});
  factory _Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);

@override final  String id;
@override final  String token;
@override final  DateTime expiresAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? ipAddress;
@override final  String? userAgent;
@override final  String userId;
@override final  String? impersonatedBy;
@override final  String? activeOrganizationId;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCopyWith<_Session> get copyWith => __$SessionCopyWithImpl<_Session>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Session&&(identical(other.id, id) || other.id == id)&&(identical(other.token, token) || other.token == token)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.impersonatedBy, impersonatedBy) || other.impersonatedBy == impersonatedBy)&&(identical(other.activeOrganizationId, activeOrganizationId) || other.activeOrganizationId == activeOrganizationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,token,expiresAt,createdAt,updatedAt,ipAddress,userAgent,userId,impersonatedBy,activeOrganizationId);

@override
String toString() {
  return 'Session(id: $id, token: $token, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, ipAddress: $ipAddress, userAgent: $userAgent, userId: $userId, impersonatedBy: $impersonatedBy, activeOrganizationId: $activeOrganizationId)';
}


}

/// @nodoc
abstract mixin class _$SessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$SessionCopyWith(_Session value, $Res Function(_Session) _then) = __$SessionCopyWithImpl;
@override @useResult
$Res call({
 String id, String token, DateTime expiresAt, DateTime? createdAt, DateTime? updatedAt, String? ipAddress, String? userAgent, String userId, String? impersonatedBy, String? activeOrganizationId
});




}
/// @nodoc
class __$SessionCopyWithImpl<$Res>
    implements _$SessionCopyWith<$Res> {
  __$SessionCopyWithImpl(this._self, this._then);

  final _Session _self;
  final $Res Function(_Session) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? token = null,Object? expiresAt = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,Object? userId = null,Object? impersonatedBy = freezed,Object? activeOrganizationId = freezed,}) {
  return _then(_Session(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,impersonatedBy: freezed == impersonatedBy ? _self.impersonatedBy : impersonatedBy // ignore: cast_nullable_to_non_nullable
as String?,activeOrganizationId: freezed == activeOrganizationId ? _self.activeOrganizationId : activeOrganizationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
