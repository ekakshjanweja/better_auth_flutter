// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasskeyRecord {

 String get id; String? get name; String get userId; String get credentialID; String get publicKey;@JsonKey(fromJson: _counterFromJson) int get counter; String get deviceType; bool get backedUp; String? get transports; DateTime? get createdAt; DateTime? get updatedAt; String? get aaguid;
/// Create a copy of PasskeyRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasskeyRecordCopyWith<PasskeyRecord> get copyWith => _$PasskeyRecordCopyWithImpl<PasskeyRecord>(this as PasskeyRecord, _$identity);

  /// Serializes this PasskeyRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PasskeyRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasskeyRecord&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.credentialID, _this.credentialID) || other.credentialID == _this.credentialID)&&(identical(other.publicKey, _this.publicKey) || other.publicKey == _this.publicKey)&&(identical(other.counter, _this.counter) || other.counter == _this.counter)&&(identical(other.deviceType, _this.deviceType) || other.deviceType == _this.deviceType)&&(identical(other.backedUp, _this.backedUp) || other.backedUp == _this.backedUp)&&(identical(other.transports, _this.transports) || other.transports == _this.transports)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.aaguid, _this.aaguid) || other.aaguid == _this.aaguid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PasskeyRecord;
  return Object.hash(runtimeType,_this.id,_this.name,_this.userId,_this.credentialID,_this.publicKey,_this.counter,_this.deviceType,_this.backedUp,_this.transports,_this.createdAt,_this.updatedAt,_this.aaguid);
}

@override
String toString() {
  final _this = this as PasskeyRecord;
  return 'PasskeyRecord(id: ${_this.id}, name: ${_this.name}, userId: ${_this.userId}, credentialID: ${_this.credentialID}, publicKey: ${_this.publicKey}, counter: ${_this.counter}, deviceType: ${_this.deviceType}, backedUp: ${_this.backedUp}, transports: ${_this.transports}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, aaguid: ${_this.aaguid})';
}


}

/// @nodoc
abstract mixin class $PasskeyRecordCopyWith<$Res>  {
  factory $PasskeyRecordCopyWith(PasskeyRecord value, $Res Function(PasskeyRecord) _then) = _$PasskeyRecordCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String userId, String credentialID, String publicKey,@JsonKey(fromJson: _counterFromJson) int counter, String deviceType, bool backedUp, String? transports, DateTime? createdAt, DateTime? updatedAt, String? aaguid
});




}
/// @nodoc
class _$PasskeyRecordCopyWithImpl<$Res>
    implements $PasskeyRecordCopyWith<$Res> {
  _$PasskeyRecordCopyWithImpl(this._self, this._then);

  final PasskeyRecord _self;
  final $Res Function(PasskeyRecord) _then;

/// Create a copy of PasskeyRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? userId = null,Object? credentialID = null,Object? publicKey = null,Object? counter = null,Object? deviceType = null,Object? backedUp = null,Object? transports = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? aaguid = freezed,}) {
  return _then(PasskeyRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,credentialID: null == credentialID ? _self.credentialID : credentialID // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,backedUp: null == backedUp ? _self.backedUp : backedUp // ignore: cast_nullable_to_non_nullable
as bool,transports: freezed == transports ? _self.transports : transports // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,aaguid: freezed == aaguid ? _self.aaguid : aaguid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PasskeyRecord].
extension PasskeyRecordPatterns on PasskeyRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasskeyRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasskeyRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasskeyRecord value)  $default,){
final _that = this;
switch (_that) {
case _PasskeyRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasskeyRecord value)?  $default,){
final _that = this;
switch (_that) {
case _PasskeyRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String userId,  String credentialID,  String publicKey, @JsonKey(fromJson: _counterFromJson)  int counter,  String deviceType,  bool backedUp,  String? transports,  DateTime? createdAt,  DateTime? updatedAt,  String? aaguid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasskeyRecord() when $default != null:
return $default(_that.id,_that.name,_that.userId,_that.credentialID,_that.publicKey,_that.counter,_that.deviceType,_that.backedUp,_that.transports,_that.createdAt,_that.updatedAt,_that.aaguid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String userId,  String credentialID,  String publicKey, @JsonKey(fromJson: _counterFromJson)  int counter,  String deviceType,  bool backedUp,  String? transports,  DateTime? createdAt,  DateTime? updatedAt,  String? aaguid)  $default,) {final _that = this;
switch (_that) {
case _PasskeyRecord():
return $default(_that.id,_that.name,_that.userId,_that.credentialID,_that.publicKey,_that.counter,_that.deviceType,_that.backedUp,_that.transports,_that.createdAt,_that.updatedAt,_that.aaguid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String userId,  String credentialID,  String publicKey, @JsonKey(fromJson: _counterFromJson)  int counter,  String deviceType,  bool backedUp,  String? transports,  DateTime? createdAt,  DateTime? updatedAt,  String? aaguid)?  $default,) {final _that = this;
switch (_that) {
case _PasskeyRecord() when $default != null:
return $default(_that.id,_that.name,_that.userId,_that.credentialID,_that.publicKey,_that.counter,_that.deviceType,_that.backedUp,_that.transports,_that.createdAt,_that.updatedAt,_that.aaguid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PasskeyRecord implements PasskeyRecord {
  const _PasskeyRecord({required this.id, this.name, required this.userId, required this.credentialID, required this.publicKey, @JsonKey(fromJson: _counterFromJson) required this.counter, required this.deviceType, required this.backedUp, this.transports, this.createdAt, this.updatedAt, this.aaguid});
  factory _PasskeyRecord.fromJson(Map<String, dynamic> json) => _$PasskeyRecordFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String userId;
@override final  String credentialID;
@override final  String publicKey;
@override@JsonKey(fromJson: _counterFromJson) final  int counter;
@override final  String deviceType;
@override final  bool backedUp;
@override final  String? transports;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? aaguid;

/// Create a copy of PasskeyRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasskeyRecordCopyWith<_PasskeyRecord> get copyWith => __$PasskeyRecordCopyWithImpl<_PasskeyRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasskeyRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasskeyRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.credentialID, credentialID) || other.credentialID == credentialID)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.counter, counter) || other.counter == counter)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.backedUp, backedUp) || other.backedUp == backedUp)&&(identical(other.transports, transports) || other.transports == transports)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.aaguid, aaguid) || other.aaguid == aaguid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,userId,credentialID,publicKey,counter,deviceType,backedUp,transports,createdAt,updatedAt,aaguid);
}

@override
String toString() {
    return 'PasskeyRecord(id: $id, name: $name, userId: $userId, credentialID: $credentialID, publicKey: $publicKey, counter: $counter, deviceType: $deviceType, backedUp: $backedUp, transports: $transports, createdAt: $createdAt, updatedAt: $updatedAt, aaguid: $aaguid)';
}


}

/// @nodoc
abstract mixin class _$PasskeyRecordCopyWith<$Res> implements $PasskeyRecordCopyWith<$Res> {
  factory _$PasskeyRecordCopyWith(_PasskeyRecord value, $Res Function(_PasskeyRecord) _then) = __$PasskeyRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String userId, String credentialID, String publicKey,@JsonKey(fromJson: _counterFromJson) int counter, String deviceType, bool backedUp, String? transports, DateTime? createdAt, DateTime? updatedAt, String? aaguid
});




}
/// @nodoc
class __$PasskeyRecordCopyWithImpl<$Res>
    implements _$PasskeyRecordCopyWith<$Res> {
  __$PasskeyRecordCopyWithImpl(this._self, this._then);

  final _PasskeyRecord _self;
  final $Res Function(_PasskeyRecord) _then;

/// Create a copy of PasskeyRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? userId = null,Object? credentialID = null,Object? publicKey = null,Object? counter = null,Object? deviceType = null,Object? backedUp = null,Object? transports = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? aaguid = freezed,}) {
  return _then(_PasskeyRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,credentialID: null == credentialID ? _self.credentialID : credentialID // ignore: cast_nullable_to_non_nullable
as String,publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as int,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,backedUp: null == backedUp ? _self.backedUp : backedUp // ignore: cast_nullable_to_non_nullable
as bool,transports: freezed == transports ? _self.transports : transports // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,aaguid: freezed == aaguid ? _self.aaguid : aaguid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
