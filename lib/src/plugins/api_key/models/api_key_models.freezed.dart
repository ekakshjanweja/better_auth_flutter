// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_key_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiKey {

 String get id; String? get name; String? get start; String? get prefix;/// The full key, present only in the create response.
 String? get key; String? get userId; bool get enabled; int? get remaining; int? get refillAmount; int? get refillInterval; bool? get rateLimitEnabled; int? get rateLimitMax; int? get rateLimitTimeWindow; int? get requestCount; DateTime? get lastRequest; DateTime? get expiresAt; DateTime? get createdAt; DateTime? get updatedAt; Map<String, dynamic>? get metadata;
/// Create a copy of ApiKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeyCopyWith<ApiKey> get copyWith => _$ApiKeyCopyWithImpl<ApiKey>(this as ApiKey, _$identity);

  /// Serializes this ApiKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKey&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.key, key) || other.key == key)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&(identical(other.refillAmount, refillAmount) || other.refillAmount == refillAmount)&&(identical(other.refillInterval, refillInterval) || other.refillInterval == refillInterval)&&(identical(other.rateLimitEnabled, rateLimitEnabled) || other.rateLimitEnabled == rateLimitEnabled)&&(identical(other.rateLimitMax, rateLimitMax) || other.rateLimitMax == rateLimitMax)&&(identical(other.rateLimitTimeWindow, rateLimitTimeWindow) || other.rateLimitTimeWindow == rateLimitTimeWindow)&&(identical(other.requestCount, requestCount) || other.requestCount == requestCount)&&(identical(other.lastRequest, lastRequest) || other.lastRequest == lastRequest)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,start,prefix,key,userId,enabled,remaining,refillAmount,refillInterval,rateLimitEnabled,rateLimitMax,rateLimitTimeWindow,requestCount,lastRequest,expiresAt,createdAt,updatedAt,const DeepCollectionEquality().hash(metadata)]);

@override
String toString() {
  return 'ApiKey(id: $id, name: $name, start: $start, prefix: $prefix, key: $key, userId: $userId, enabled: $enabled, remaining: $remaining, refillAmount: $refillAmount, refillInterval: $refillInterval, rateLimitEnabled: $rateLimitEnabled, rateLimitMax: $rateLimitMax, rateLimitTimeWindow: $rateLimitTimeWindow, requestCount: $requestCount, lastRequest: $lastRequest, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ApiKeyCopyWith<$Res>  {
  factory $ApiKeyCopyWith(ApiKey value, $Res Function(ApiKey) _then) = _$ApiKeyCopyWithImpl;
@useResult
$Res call({
 String id, String? name, String? start, String? prefix, String? key, String? userId, bool enabled, int? remaining, int? refillAmount, int? refillInterval, bool? rateLimitEnabled, int? rateLimitMax, int? rateLimitTimeWindow, int? requestCount, DateTime? lastRequest, DateTime? expiresAt, DateTime? createdAt, DateTime? updatedAt, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$ApiKeyCopyWithImpl<$Res>
    implements $ApiKeyCopyWith<$Res> {
  _$ApiKeyCopyWithImpl(this._self, this._then);

  final ApiKey _self;
  final $Res Function(ApiKey) _then;

/// Create a copy of ApiKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? start = freezed,Object? prefix = freezed,Object? key = freezed,Object? userId = freezed,Object? enabled = null,Object? remaining = freezed,Object? refillAmount = freezed,Object? refillInterval = freezed,Object? rateLimitEnabled = freezed,Object? rateLimitMax = freezed,Object? rateLimitTimeWindow = freezed,Object? requestCount = freezed,Object? lastRequest = freezed,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,refillAmount: freezed == refillAmount ? _self.refillAmount : refillAmount // ignore: cast_nullable_to_non_nullable
as int?,refillInterval: freezed == refillInterval ? _self.refillInterval : refillInterval // ignore: cast_nullable_to_non_nullable
as int?,rateLimitEnabled: freezed == rateLimitEnabled ? _self.rateLimitEnabled : rateLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool?,rateLimitMax: freezed == rateLimitMax ? _self.rateLimitMax : rateLimitMax // ignore: cast_nullable_to_non_nullable
as int?,rateLimitTimeWindow: freezed == rateLimitTimeWindow ? _self.rateLimitTimeWindow : rateLimitTimeWindow // ignore: cast_nullable_to_non_nullable
as int?,requestCount: freezed == requestCount ? _self.requestCount : requestCount // ignore: cast_nullable_to_non_nullable
as int?,lastRequest: freezed == lastRequest ? _self.lastRequest : lastRequest // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKey].
extension ApiKeyPatterns on ApiKey {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKey value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKey() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKey value)  $default,){
final _that = this;
switch (_that) {
case _ApiKey():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKey value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKey() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? name,  String? start,  String? prefix,  String? key,  String? userId,  bool enabled,  int? remaining,  int? refillAmount,  int? refillInterval,  bool? rateLimitEnabled,  int? rateLimitMax,  int? rateLimitTimeWindow,  int? requestCount,  DateTime? lastRequest,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKey() when $default != null:
return $default(_that.id,_that.name,_that.start,_that.prefix,_that.key,_that.userId,_that.enabled,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitEnabled,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.requestCount,_that.lastRequest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? name,  String? start,  String? prefix,  String? key,  String? userId,  bool enabled,  int? remaining,  int? refillAmount,  int? refillInterval,  bool? rateLimitEnabled,  int? rateLimitMax,  int? rateLimitTimeWindow,  int? requestCount,  DateTime? lastRequest,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _ApiKey():
return $default(_that.id,_that.name,_that.start,_that.prefix,_that.key,_that.userId,_that.enabled,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitEnabled,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.requestCount,_that.lastRequest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? name,  String? start,  String? prefix,  String? key,  String? userId,  bool enabled,  int? remaining,  int? refillAmount,  int? refillInterval,  bool? rateLimitEnabled,  int? rateLimitMax,  int? rateLimitTimeWindow,  int? requestCount,  DateTime? lastRequest,  DateTime? expiresAt,  DateTime? createdAt,  DateTime? updatedAt,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _ApiKey() when $default != null:
return $default(_that.id,_that.name,_that.start,_that.prefix,_that.key,_that.userId,_that.enabled,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitEnabled,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.requestCount,_that.lastRequest,_that.expiresAt,_that.createdAt,_that.updatedAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiKey implements ApiKey {
  const _ApiKey({required this.id, this.name, this.start, this.prefix, this.key, this.userId, this.enabled = true, this.remaining, this.refillAmount, this.refillInterval, this.rateLimitEnabled, this.rateLimitMax, this.rateLimitTimeWindow, this.requestCount, this.lastRequest, this.expiresAt, this.createdAt, this.updatedAt, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _ApiKey.fromJson(Map<String, dynamic> json) => _$ApiKeyFromJson(json);

@override final  String id;
@override final  String? name;
@override final  String? start;
@override final  String? prefix;
/// The full key, present only in the create response.
@override final  String? key;
@override final  String? userId;
@override@JsonKey() final  bool enabled;
@override final  int? remaining;
@override final  int? refillAmount;
@override final  int? refillInterval;
@override final  bool? rateLimitEnabled;
@override final  int? rateLimitMax;
@override final  int? rateLimitTimeWindow;
@override final  int? requestCount;
@override final  DateTime? lastRequest;
@override final  DateTime? expiresAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ApiKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeyCopyWith<_ApiKey> get copyWith => __$ApiKeyCopyWithImpl<_ApiKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKey&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.start, start) || other.start == start)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.key, key) || other.key == key)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&(identical(other.refillAmount, refillAmount) || other.refillAmount == refillAmount)&&(identical(other.refillInterval, refillInterval) || other.refillInterval == refillInterval)&&(identical(other.rateLimitEnabled, rateLimitEnabled) || other.rateLimitEnabled == rateLimitEnabled)&&(identical(other.rateLimitMax, rateLimitMax) || other.rateLimitMax == rateLimitMax)&&(identical(other.rateLimitTimeWindow, rateLimitTimeWindow) || other.rateLimitTimeWindow == rateLimitTimeWindow)&&(identical(other.requestCount, requestCount) || other.requestCount == requestCount)&&(identical(other.lastRequest, lastRequest) || other.lastRequest == lastRequest)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,start,prefix,key,userId,enabled,remaining,refillAmount,refillInterval,rateLimitEnabled,rateLimitMax,rateLimitTimeWindow,requestCount,lastRequest,expiresAt,createdAt,updatedAt,const DeepCollectionEquality().hash(_metadata)]);

@override
String toString() {
  return 'ApiKey(id: $id, name: $name, start: $start, prefix: $prefix, key: $key, userId: $userId, enabled: $enabled, remaining: $remaining, refillAmount: $refillAmount, refillInterval: $refillInterval, rateLimitEnabled: $rateLimitEnabled, rateLimitMax: $rateLimitMax, rateLimitTimeWindow: $rateLimitTimeWindow, requestCount: $requestCount, lastRequest: $lastRequest, expiresAt: $expiresAt, createdAt: $createdAt, updatedAt: $updatedAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ApiKeyCopyWith<$Res> implements $ApiKeyCopyWith<$Res> {
  factory _$ApiKeyCopyWith(_ApiKey value, $Res Function(_ApiKey) _then) = __$ApiKeyCopyWithImpl;
@override @useResult
$Res call({
 String id, String? name, String? start, String? prefix, String? key, String? userId, bool enabled, int? remaining, int? refillAmount, int? refillInterval, bool? rateLimitEnabled, int? rateLimitMax, int? rateLimitTimeWindow, int? requestCount, DateTime? lastRequest, DateTime? expiresAt, DateTime? createdAt, DateTime? updatedAt, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$ApiKeyCopyWithImpl<$Res>
    implements _$ApiKeyCopyWith<$Res> {
  __$ApiKeyCopyWithImpl(this._self, this._then);

  final _ApiKey _self;
  final $Res Function(_ApiKey) _then;

/// Create a copy of ApiKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? start = freezed,Object? prefix = freezed,Object? key = freezed,Object? userId = freezed,Object? enabled = null,Object? remaining = freezed,Object? refillAmount = freezed,Object? refillInterval = freezed,Object? rateLimitEnabled = freezed,Object? rateLimitMax = freezed,Object? rateLimitTimeWindow = freezed,Object? requestCount = freezed,Object? lastRequest = freezed,Object? expiresAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? metadata = freezed,}) {
  return _then(_ApiKey(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,refillAmount: freezed == refillAmount ? _self.refillAmount : refillAmount // ignore: cast_nullable_to_non_nullable
as int?,refillInterval: freezed == refillInterval ? _self.refillInterval : refillInterval // ignore: cast_nullable_to_non_nullable
as int?,rateLimitEnabled: freezed == rateLimitEnabled ? _self.rateLimitEnabled : rateLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool?,rateLimitMax: freezed == rateLimitMax ? _self.rateLimitMax : rateLimitMax // ignore: cast_nullable_to_non_nullable
as int?,rateLimitTimeWindow: freezed == rateLimitTimeWindow ? _self.rateLimitTimeWindow : rateLimitTimeWindow // ignore: cast_nullable_to_non_nullable
as int?,requestCount: freezed == requestCount ? _self.requestCount : requestCount // ignore: cast_nullable_to_non_nullable
as int?,lastRequest: freezed == lastRequest ? _self.lastRequest : lastRequest // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$CreateApiKeyBody {

 String? get name; String? get prefix; int? get expiresIn; int? get remaining; int? get refillAmount; int? get refillInterval; int? get rateLimitMax; int? get rateLimitTimeWindow; bool? get rateLimitEnabled; Map<String, dynamic>? get metadata;
/// Create a copy of CreateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateApiKeyBodyCopyWith<CreateApiKeyBody> get copyWith => _$CreateApiKeyBodyCopyWithImpl<CreateApiKeyBody>(this as CreateApiKeyBody, _$identity);

  /// Serializes this CreateApiKeyBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateApiKeyBody&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&(identical(other.refillAmount, refillAmount) || other.refillAmount == refillAmount)&&(identical(other.refillInterval, refillInterval) || other.refillInterval == refillInterval)&&(identical(other.rateLimitMax, rateLimitMax) || other.rateLimitMax == rateLimitMax)&&(identical(other.rateLimitTimeWindow, rateLimitTimeWindow) || other.rateLimitTimeWindow == rateLimitTimeWindow)&&(identical(other.rateLimitEnabled, rateLimitEnabled) || other.rateLimitEnabled == rateLimitEnabled)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,prefix,expiresIn,remaining,refillAmount,refillInterval,rateLimitMax,rateLimitTimeWindow,rateLimitEnabled,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CreateApiKeyBody(name: $name, prefix: $prefix, expiresIn: $expiresIn, remaining: $remaining, refillAmount: $refillAmount, refillInterval: $refillInterval, rateLimitMax: $rateLimitMax, rateLimitTimeWindow: $rateLimitTimeWindow, rateLimitEnabled: $rateLimitEnabled, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CreateApiKeyBodyCopyWith<$Res>  {
  factory $CreateApiKeyBodyCopyWith(CreateApiKeyBody value, $Res Function(CreateApiKeyBody) _then) = _$CreateApiKeyBodyCopyWithImpl;
@useResult
$Res call({
 String? name, String? prefix, int? expiresIn, int? remaining, int? refillAmount, int? refillInterval, int? rateLimitMax, int? rateLimitTimeWindow, bool? rateLimitEnabled, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$CreateApiKeyBodyCopyWithImpl<$Res>
    implements $CreateApiKeyBodyCopyWith<$Res> {
  _$CreateApiKeyBodyCopyWithImpl(this._self, this._then);

  final CreateApiKeyBody _self;
  final $Res Function(CreateApiKeyBody) _then;

/// Create a copy of CreateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? prefix = freezed,Object? expiresIn = freezed,Object? remaining = freezed,Object? refillAmount = freezed,Object? refillInterval = freezed,Object? rateLimitMax = freezed,Object? rateLimitTimeWindow = freezed,Object? rateLimitEnabled = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,refillAmount: freezed == refillAmount ? _self.refillAmount : refillAmount // ignore: cast_nullable_to_non_nullable
as int?,refillInterval: freezed == refillInterval ? _self.refillInterval : refillInterval // ignore: cast_nullable_to_non_nullable
as int?,rateLimitMax: freezed == rateLimitMax ? _self.rateLimitMax : rateLimitMax // ignore: cast_nullable_to_non_nullable
as int?,rateLimitTimeWindow: freezed == rateLimitTimeWindow ? _self.rateLimitTimeWindow : rateLimitTimeWindow // ignore: cast_nullable_to_non_nullable
as int?,rateLimitEnabled: freezed == rateLimitEnabled ? _self.rateLimitEnabled : rateLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateApiKeyBody].
extension CreateApiKeyBodyPatterns on CreateApiKeyBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateApiKeyBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateApiKeyBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateApiKeyBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateApiKeyBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateApiKeyBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateApiKeyBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? prefix,  int? expiresIn,  int? remaining,  int? refillAmount,  int? refillInterval,  int? rateLimitMax,  int? rateLimitTimeWindow,  bool? rateLimitEnabled,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateApiKeyBody() when $default != null:
return $default(_that.name,_that.prefix,_that.expiresIn,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.rateLimitEnabled,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? prefix,  int? expiresIn,  int? remaining,  int? refillAmount,  int? refillInterval,  int? rateLimitMax,  int? rateLimitTimeWindow,  bool? rateLimitEnabled,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _CreateApiKeyBody():
return $default(_that.name,_that.prefix,_that.expiresIn,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.rateLimitEnabled,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? prefix,  int? expiresIn,  int? remaining,  int? refillAmount,  int? refillInterval,  int? rateLimitMax,  int? rateLimitTimeWindow,  bool? rateLimitEnabled,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _CreateApiKeyBody() when $default != null:
return $default(_that.name,_that.prefix,_that.expiresIn,_that.remaining,_that.refillAmount,_that.refillInterval,_that.rateLimitMax,_that.rateLimitTimeWindow,_that.rateLimitEnabled,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateApiKeyBody implements CreateApiKeyBody {
  const _CreateApiKeyBody({this.name, this.prefix, this.expiresIn, this.remaining, this.refillAmount, this.refillInterval, this.rateLimitMax, this.rateLimitTimeWindow, this.rateLimitEnabled, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _CreateApiKeyBody.fromJson(Map<String, dynamic> json) => _$CreateApiKeyBodyFromJson(json);

@override final  String? name;
@override final  String? prefix;
@override final  int? expiresIn;
@override final  int? remaining;
@override final  int? refillAmount;
@override final  int? refillInterval;
@override final  int? rateLimitMax;
@override final  int? rateLimitTimeWindow;
@override final  bool? rateLimitEnabled;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CreateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateApiKeyBodyCopyWith<_CreateApiKeyBody> get copyWith => __$CreateApiKeyBodyCopyWithImpl<_CreateApiKeyBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateApiKeyBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateApiKeyBody&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&(identical(other.refillAmount, refillAmount) || other.refillAmount == refillAmount)&&(identical(other.refillInterval, refillInterval) || other.refillInterval == refillInterval)&&(identical(other.rateLimitMax, rateLimitMax) || other.rateLimitMax == rateLimitMax)&&(identical(other.rateLimitTimeWindow, rateLimitTimeWindow) || other.rateLimitTimeWindow == rateLimitTimeWindow)&&(identical(other.rateLimitEnabled, rateLimitEnabled) || other.rateLimitEnabled == rateLimitEnabled)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,prefix,expiresIn,remaining,refillAmount,refillInterval,rateLimitMax,rateLimitTimeWindow,rateLimitEnabled,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CreateApiKeyBody(name: $name, prefix: $prefix, expiresIn: $expiresIn, remaining: $remaining, refillAmount: $refillAmount, refillInterval: $refillInterval, rateLimitMax: $rateLimitMax, rateLimitTimeWindow: $rateLimitTimeWindow, rateLimitEnabled: $rateLimitEnabled, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CreateApiKeyBodyCopyWith<$Res> implements $CreateApiKeyBodyCopyWith<$Res> {
  factory _$CreateApiKeyBodyCopyWith(_CreateApiKeyBody value, $Res Function(_CreateApiKeyBody) _then) = __$CreateApiKeyBodyCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? prefix, int? expiresIn, int? remaining, int? refillAmount, int? refillInterval, int? rateLimitMax, int? rateLimitTimeWindow, bool? rateLimitEnabled, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$CreateApiKeyBodyCopyWithImpl<$Res>
    implements _$CreateApiKeyBodyCopyWith<$Res> {
  __$CreateApiKeyBodyCopyWithImpl(this._self, this._then);

  final _CreateApiKeyBody _self;
  final $Res Function(_CreateApiKeyBody) _then;

/// Create a copy of CreateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? prefix = freezed,Object? expiresIn = freezed,Object? remaining = freezed,Object? refillAmount = freezed,Object? refillInterval = freezed,Object? rateLimitMax = freezed,Object? rateLimitTimeWindow = freezed,Object? rateLimitEnabled = freezed,Object? metadata = freezed,}) {
  return _then(_CreateApiKeyBody(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,prefix: freezed == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,refillAmount: freezed == refillAmount ? _self.refillAmount : refillAmount // ignore: cast_nullable_to_non_nullable
as int?,refillInterval: freezed == refillInterval ? _self.refillInterval : refillInterval // ignore: cast_nullable_to_non_nullable
as int?,rateLimitMax: freezed == rateLimitMax ? _self.rateLimitMax : rateLimitMax // ignore: cast_nullable_to_non_nullable
as int?,rateLimitTimeWindow: freezed == rateLimitTimeWindow ? _self.rateLimitTimeWindow : rateLimitTimeWindow // ignore: cast_nullable_to_non_nullable
as int?,rateLimitEnabled: freezed == rateLimitEnabled ? _self.rateLimitEnabled : rateLimitEnabled // ignore: cast_nullable_to_non_nullable
as bool?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$UpdateApiKeyBody {

 String get keyId; String? get name; bool? get enabled; int? get remaining; Map<String, dynamic>? get metadata;
/// Create a copy of UpdateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateApiKeyBodyCopyWith<UpdateApiKeyBody> get copyWith => _$UpdateApiKeyBodyCopyWithImpl<UpdateApiKeyBody>(this as UpdateApiKeyBody, _$identity);

  /// Serializes this UpdateApiKeyBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateApiKeyBody&&(identical(other.keyId, keyId) || other.keyId == keyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyId,name,enabled,remaining,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'UpdateApiKeyBody(keyId: $keyId, name: $name, enabled: $enabled, remaining: $remaining, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $UpdateApiKeyBodyCopyWith<$Res>  {
  factory $UpdateApiKeyBodyCopyWith(UpdateApiKeyBody value, $Res Function(UpdateApiKeyBody) _then) = _$UpdateApiKeyBodyCopyWithImpl;
@useResult
$Res call({
 String keyId, String? name, bool? enabled, int? remaining, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$UpdateApiKeyBodyCopyWithImpl<$Res>
    implements $UpdateApiKeyBodyCopyWith<$Res> {
  _$UpdateApiKeyBodyCopyWithImpl(this._self, this._then);

  final UpdateApiKeyBody _self;
  final $Res Function(UpdateApiKeyBody) _then;

/// Create a copy of UpdateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyId = null,Object? name = freezed,Object? enabled = freezed,Object? remaining = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateApiKeyBody].
extension UpdateApiKeyBodyPatterns on UpdateApiKeyBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateApiKeyBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateApiKeyBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateApiKeyBody value)  $default,){
final _that = this;
switch (_that) {
case _UpdateApiKeyBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateApiKeyBody value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateApiKeyBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String keyId,  String? name,  bool? enabled,  int? remaining,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateApiKeyBody() when $default != null:
return $default(_that.keyId,_that.name,_that.enabled,_that.remaining,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String keyId,  String? name,  bool? enabled,  int? remaining,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _UpdateApiKeyBody():
return $default(_that.keyId,_that.name,_that.enabled,_that.remaining,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String keyId,  String? name,  bool? enabled,  int? remaining,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _UpdateApiKeyBody() when $default != null:
return $default(_that.keyId,_that.name,_that.enabled,_that.remaining,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateApiKeyBody implements UpdateApiKeyBody {
  const _UpdateApiKeyBody({required this.keyId, this.name, this.enabled, this.remaining, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _UpdateApiKeyBody.fromJson(Map<String, dynamic> json) => _$UpdateApiKeyBodyFromJson(json);

@override final  String keyId;
@override final  String? name;
@override final  bool? enabled;
@override final  int? remaining;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of UpdateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateApiKeyBodyCopyWith<_UpdateApiKeyBody> get copyWith => __$UpdateApiKeyBodyCopyWithImpl<_UpdateApiKeyBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateApiKeyBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateApiKeyBody&&(identical(other.keyId, keyId) || other.keyId == keyId)&&(identical(other.name, name) || other.name == name)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.remaining, remaining) || other.remaining == remaining)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,keyId,name,enabled,remaining,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'UpdateApiKeyBody(keyId: $keyId, name: $name, enabled: $enabled, remaining: $remaining, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$UpdateApiKeyBodyCopyWith<$Res> implements $UpdateApiKeyBodyCopyWith<$Res> {
  factory _$UpdateApiKeyBodyCopyWith(_UpdateApiKeyBody value, $Res Function(_UpdateApiKeyBody) _then) = __$UpdateApiKeyBodyCopyWithImpl;
@override @useResult
$Res call({
 String keyId, String? name, bool? enabled, int? remaining, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$UpdateApiKeyBodyCopyWithImpl<$Res>
    implements _$UpdateApiKeyBodyCopyWith<$Res> {
  __$UpdateApiKeyBodyCopyWithImpl(this._self, this._then);

  final _UpdateApiKeyBody _self;
  final $Res Function(_UpdateApiKeyBody) _then;

/// Create a copy of UpdateApiKeyBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyId = null,Object? name = freezed,Object? enabled = freezed,Object? remaining = freezed,Object? metadata = freezed,}) {
  return _then(_UpdateApiKeyBody(
keyId: null == keyId ? _self.keyId : keyId // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,remaining: freezed == remaining ? _self.remaining : remaining // ignore: cast_nullable_to_non_nullable
as int?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
