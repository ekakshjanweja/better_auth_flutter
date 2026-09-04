// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'two_factor_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TwoFactorEnableBody {

 String get password; String? get issuer; String? get method;
/// Create a copy of TwoFactorEnableBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TwoFactorEnableBodyCopyWith<TwoFactorEnableBody> get copyWith => _$TwoFactorEnableBodyCopyWithImpl<TwoFactorEnableBody>(this as TwoFactorEnableBody, _$identity);

  /// Serializes this TwoFactorEnableBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TwoFactorEnableBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TwoFactorEnableBody&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.issuer, _this.issuer) || other.issuer == _this.issuer)&&(identical(other.method, _this.method) || other.method == _this.method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TwoFactorEnableBody;
  return Object.hash(runtimeType,_this.password,_this.issuer,_this.method);
}

@override
String toString() {
  final _this = this as TwoFactorEnableBody;
  return 'TwoFactorEnableBody(password: ${_this.password}, issuer: ${_this.issuer}, method: ${_this.method})';
}


}

/// @nodoc
abstract mixin class $TwoFactorEnableBodyCopyWith<$Res>  {
  factory $TwoFactorEnableBodyCopyWith(TwoFactorEnableBody value, $Res Function(TwoFactorEnableBody) _then) = _$TwoFactorEnableBodyCopyWithImpl;
@useResult
$Res call({
 String password, String? issuer, String? method
});




}
/// @nodoc
class _$TwoFactorEnableBodyCopyWithImpl<$Res>
    implements $TwoFactorEnableBodyCopyWith<$Res> {
  _$TwoFactorEnableBodyCopyWithImpl(this._self, this._then);

  final TwoFactorEnableBody _self;
  final $Res Function(TwoFactorEnableBody) _then;

/// Create a copy of TwoFactorEnableBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,Object? issuer = freezed,Object? method = freezed,}) {
  return _then(TwoFactorEnableBody(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TwoFactorEnableBody].
extension TwoFactorEnableBodyPatterns on TwoFactorEnableBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TwoFactorEnableBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TwoFactorEnableBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TwoFactorEnableBody value)  $default,){
final _that = this;
switch (_that) {
case _TwoFactorEnableBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TwoFactorEnableBody value)?  $default,){
final _that = this;
switch (_that) {
case _TwoFactorEnableBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String password,  String? issuer,  String? method)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TwoFactorEnableBody() when $default != null:
return $default(_that.password,_that.issuer,_that.method);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String password,  String? issuer,  String? method)  $default,) {final _that = this;
switch (_that) {
case _TwoFactorEnableBody():
return $default(_that.password,_that.issuer,_that.method);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String password,  String? issuer,  String? method)?  $default,) {final _that = this;
switch (_that) {
case _TwoFactorEnableBody() when $default != null:
return $default(_that.password,_that.issuer,_that.method);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TwoFactorEnableBody implements TwoFactorEnableBody {
  const _TwoFactorEnableBody({required this.password, this.issuer, this.method});
  factory _TwoFactorEnableBody.fromJson(Map<String, dynamic> json) => _$TwoFactorEnableBodyFromJson(json);

@override final  String password;
@override final  String? issuer;
@override final  String? method;

/// Create a copy of TwoFactorEnableBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TwoFactorEnableBodyCopyWith<_TwoFactorEnableBody> get copyWith => __$TwoFactorEnableBodyCopyWithImpl<_TwoFactorEnableBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TwoFactorEnableBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TwoFactorEnableBody&&(identical(other.password, password) || other.password == password)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&(identical(other.method, method) || other.method == method));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,password,issuer,method);
}

@override
String toString() {
    return 'TwoFactorEnableBody(password: $password, issuer: $issuer, method: $method)';
}


}

/// @nodoc
abstract mixin class _$TwoFactorEnableBodyCopyWith<$Res> implements $TwoFactorEnableBodyCopyWith<$Res> {
  factory _$TwoFactorEnableBodyCopyWith(_TwoFactorEnableBody value, $Res Function(_TwoFactorEnableBody) _then) = __$TwoFactorEnableBodyCopyWithImpl;
@override @useResult
$Res call({
 String password, String? issuer, String? method
});




}
/// @nodoc
class __$TwoFactorEnableBodyCopyWithImpl<$Res>
    implements _$TwoFactorEnableBodyCopyWith<$Res> {
  __$TwoFactorEnableBodyCopyWithImpl(this._self, this._then);

  final _TwoFactorEnableBody _self;
  final $Res Function(_TwoFactorEnableBody) _then;

/// Create a copy of TwoFactorEnableBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,Object? issuer = freezed,Object? method = freezed,}) {
  return _then(_TwoFactorEnableBody(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,issuer: freezed == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$TwoFactorPasswordBody {

 String get password;
/// Create a copy of TwoFactorPasswordBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TwoFactorPasswordBodyCopyWith<TwoFactorPasswordBody> get copyWith => _$TwoFactorPasswordBodyCopyWithImpl<TwoFactorPasswordBody>(this as TwoFactorPasswordBody, _$identity);

  /// Serializes this TwoFactorPasswordBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TwoFactorPasswordBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TwoFactorPasswordBody&&(identical(other.password, _this.password) || other.password == _this.password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TwoFactorPasswordBody;
  return Object.hash(runtimeType,_this.password);
}

@override
String toString() {
  final _this = this as TwoFactorPasswordBody;
  return 'TwoFactorPasswordBody(password: ${_this.password})';
}


}

/// @nodoc
abstract mixin class $TwoFactorPasswordBodyCopyWith<$Res>  {
  factory $TwoFactorPasswordBodyCopyWith(TwoFactorPasswordBody value, $Res Function(TwoFactorPasswordBody) _then) = _$TwoFactorPasswordBodyCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class _$TwoFactorPasswordBodyCopyWithImpl<$Res>
    implements $TwoFactorPasswordBodyCopyWith<$Res> {
  _$TwoFactorPasswordBodyCopyWithImpl(this._self, this._then);

  final TwoFactorPasswordBody _self;
  final $Res Function(TwoFactorPasswordBody) _then;

/// Create a copy of TwoFactorPasswordBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = null,}) {
  return _then(TwoFactorPasswordBody(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TwoFactorPasswordBody].
extension TwoFactorPasswordBodyPatterns on TwoFactorPasswordBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TwoFactorPasswordBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TwoFactorPasswordBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TwoFactorPasswordBody value)  $default,){
final _that = this;
switch (_that) {
case _TwoFactorPasswordBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TwoFactorPasswordBody value)?  $default,){
final _that = this;
switch (_that) {
case _TwoFactorPasswordBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TwoFactorPasswordBody() when $default != null:
return $default(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String password)  $default,) {final _that = this;
switch (_that) {
case _TwoFactorPasswordBody():
return $default(_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String password)?  $default,) {final _that = this;
switch (_that) {
case _TwoFactorPasswordBody() when $default != null:
return $default(_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TwoFactorPasswordBody implements TwoFactorPasswordBody {
  const _TwoFactorPasswordBody({required this.password});
  factory _TwoFactorPasswordBody.fromJson(Map<String, dynamic> json) => _$TwoFactorPasswordBodyFromJson(json);

@override final  String password;

/// Create a copy of TwoFactorPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TwoFactorPasswordBodyCopyWith<_TwoFactorPasswordBody> get copyWith => __$TwoFactorPasswordBodyCopyWithImpl<_TwoFactorPasswordBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TwoFactorPasswordBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TwoFactorPasswordBody&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,password);
}

@override
String toString() {
    return 'TwoFactorPasswordBody(password: $password)';
}


}

/// @nodoc
abstract mixin class _$TwoFactorPasswordBodyCopyWith<$Res> implements $TwoFactorPasswordBodyCopyWith<$Res> {
  factory _$TwoFactorPasswordBodyCopyWith(_TwoFactorPasswordBody value, $Res Function(_TwoFactorPasswordBody) _then) = __$TwoFactorPasswordBodyCopyWithImpl;
@override @useResult
$Res call({
 String password
});




}
/// @nodoc
class __$TwoFactorPasswordBodyCopyWithImpl<$Res>
    implements _$TwoFactorPasswordBodyCopyWith<$Res> {
  __$TwoFactorPasswordBodyCopyWithImpl(this._self, this._then);

  final _TwoFactorPasswordBody _self;
  final $Res Function(_TwoFactorPasswordBody) _then;

/// Create a copy of TwoFactorPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_TwoFactorPasswordBody(
password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TwoFactorVerifyBody {

 String get code; bool? get trustDevice;
/// Create a copy of TwoFactorVerifyBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TwoFactorVerifyBodyCopyWith<TwoFactorVerifyBody> get copyWith => _$TwoFactorVerifyBodyCopyWithImpl<TwoFactorVerifyBody>(this as TwoFactorVerifyBody, _$identity);

  /// Serializes this TwoFactorVerifyBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TwoFactorVerifyBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TwoFactorVerifyBody&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.trustDevice, _this.trustDevice) || other.trustDevice == _this.trustDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TwoFactorVerifyBody;
  return Object.hash(runtimeType,_this.code,_this.trustDevice);
}

@override
String toString() {
  final _this = this as TwoFactorVerifyBody;
  return 'TwoFactorVerifyBody(code: ${_this.code}, trustDevice: ${_this.trustDevice})';
}


}

/// @nodoc
abstract mixin class $TwoFactorVerifyBodyCopyWith<$Res>  {
  factory $TwoFactorVerifyBodyCopyWith(TwoFactorVerifyBody value, $Res Function(TwoFactorVerifyBody) _then) = _$TwoFactorVerifyBodyCopyWithImpl;
@useResult
$Res call({
 String code, bool? trustDevice
});




}
/// @nodoc
class _$TwoFactorVerifyBodyCopyWithImpl<$Res>
    implements $TwoFactorVerifyBodyCopyWith<$Res> {
  _$TwoFactorVerifyBodyCopyWithImpl(this._self, this._then);

  final TwoFactorVerifyBody _self;
  final $Res Function(TwoFactorVerifyBody) _then;

/// Create a copy of TwoFactorVerifyBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? trustDevice = freezed,}) {
  return _then(TwoFactorVerifyBody(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,trustDevice: freezed == trustDevice ? _self.trustDevice : trustDevice // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TwoFactorVerifyBody].
extension TwoFactorVerifyBodyPatterns on TwoFactorVerifyBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TwoFactorVerifyBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TwoFactorVerifyBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TwoFactorVerifyBody value)  $default,){
final _that = this;
switch (_that) {
case _TwoFactorVerifyBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TwoFactorVerifyBody value)?  $default,){
final _that = this;
switch (_that) {
case _TwoFactorVerifyBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  bool? trustDevice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TwoFactorVerifyBody() when $default != null:
return $default(_that.code,_that.trustDevice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  bool? trustDevice)  $default,) {final _that = this;
switch (_that) {
case _TwoFactorVerifyBody():
return $default(_that.code,_that.trustDevice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  bool? trustDevice)?  $default,) {final _that = this;
switch (_that) {
case _TwoFactorVerifyBody() when $default != null:
return $default(_that.code,_that.trustDevice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TwoFactorVerifyBody implements TwoFactorVerifyBody {
  const _TwoFactorVerifyBody({required this.code, this.trustDevice});
  factory _TwoFactorVerifyBody.fromJson(Map<String, dynamic> json) => _$TwoFactorVerifyBodyFromJson(json);

@override final  String code;
@override final  bool? trustDevice;

/// Create a copy of TwoFactorVerifyBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TwoFactorVerifyBodyCopyWith<_TwoFactorVerifyBody> get copyWith => __$TwoFactorVerifyBodyCopyWithImpl<_TwoFactorVerifyBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TwoFactorVerifyBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TwoFactorVerifyBody&&(identical(other.code, code) || other.code == code)&&(identical(other.trustDevice, trustDevice) || other.trustDevice == trustDevice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,code,trustDevice);
}

@override
String toString() {
    return 'TwoFactorVerifyBody(code: $code, trustDevice: $trustDevice)';
}


}

/// @nodoc
abstract mixin class _$TwoFactorVerifyBodyCopyWith<$Res> implements $TwoFactorVerifyBodyCopyWith<$Res> {
  factory _$TwoFactorVerifyBodyCopyWith(_TwoFactorVerifyBody value, $Res Function(_TwoFactorVerifyBody) _then) = __$TwoFactorVerifyBodyCopyWithImpl;
@override @useResult
$Res call({
 String code, bool? trustDevice
});




}
/// @nodoc
class __$TwoFactorVerifyBodyCopyWithImpl<$Res>
    implements _$TwoFactorVerifyBodyCopyWith<$Res> {
  __$TwoFactorVerifyBodyCopyWithImpl(this._self, this._then);

  final _TwoFactorVerifyBody _self;
  final $Res Function(_TwoFactorVerifyBody) _then;

/// Create a copy of TwoFactorVerifyBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? trustDevice = freezed,}) {
  return _then(_TwoFactorVerifyBody(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,trustDevice: freezed == trustDevice ? _self.trustDevice : trustDevice // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$TwoFactorEnableResponse {

 String? get method; String? get totpURI; List<String> get backupCodes;
/// Create a copy of TwoFactorEnableResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TwoFactorEnableResponseCopyWith<TwoFactorEnableResponse> get copyWith => _$TwoFactorEnableResponseCopyWithImpl<TwoFactorEnableResponse>(this as TwoFactorEnableResponse, _$identity);

  /// Serializes this TwoFactorEnableResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TwoFactorEnableResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TwoFactorEnableResponse&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.totpURI, _this.totpURI) || other.totpURI == _this.totpURI)&&const DeepCollectionEquality().equals(other.backupCodes, _this.backupCodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TwoFactorEnableResponse;
  return Object.hash(runtimeType,_this.method,_this.totpURI,const DeepCollectionEquality().hash(_this.backupCodes));
}

@override
String toString() {
  final _this = this as TwoFactorEnableResponse;
  return 'TwoFactorEnableResponse(method: ${_this.method}, totpURI: ${_this.totpURI}, backupCodes: ${_this.backupCodes})';
}


}

/// @nodoc
abstract mixin class $TwoFactorEnableResponseCopyWith<$Res>  {
  factory $TwoFactorEnableResponseCopyWith(TwoFactorEnableResponse value, $Res Function(TwoFactorEnableResponse) _then) = _$TwoFactorEnableResponseCopyWithImpl;
@useResult
$Res call({
 String? method, String? totpURI, List<String> backupCodes
});




}
/// @nodoc
class _$TwoFactorEnableResponseCopyWithImpl<$Res>
    implements $TwoFactorEnableResponseCopyWith<$Res> {
  _$TwoFactorEnableResponseCopyWithImpl(this._self, this._then);

  final TwoFactorEnableResponse _self;
  final $Res Function(TwoFactorEnableResponse) _then;

/// Create a copy of TwoFactorEnableResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = freezed,Object? totpURI = freezed,Object? backupCodes = null,}) {
  return _then(TwoFactorEnableResponse(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,totpURI: freezed == totpURI ? _self.totpURI : totpURI // ignore: cast_nullable_to_non_nullable
as String?,backupCodes: null == backupCodes ? _self.backupCodes : backupCodes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TwoFactorEnableResponse].
extension TwoFactorEnableResponsePatterns on TwoFactorEnableResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TwoFactorEnableResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TwoFactorEnableResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TwoFactorEnableResponse value)  $default,){
final _that = this;
switch (_that) {
case _TwoFactorEnableResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TwoFactorEnableResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TwoFactorEnableResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? method,  String? totpURI,  List<String> backupCodes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TwoFactorEnableResponse() when $default != null:
return $default(_that.method,_that.totpURI,_that.backupCodes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? method,  String? totpURI,  List<String> backupCodes)  $default,) {final _that = this;
switch (_that) {
case _TwoFactorEnableResponse():
return $default(_that.method,_that.totpURI,_that.backupCodes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? method,  String? totpURI,  List<String> backupCodes)?  $default,) {final _that = this;
switch (_that) {
case _TwoFactorEnableResponse() when $default != null:
return $default(_that.method,_that.totpURI,_that.backupCodes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TwoFactorEnableResponse implements TwoFactorEnableResponse {
  const _TwoFactorEnableResponse({this.method, this.totpURI,  List<String> backupCodes = const <String>[]}): _backupCodes = backupCodes;
  factory _TwoFactorEnableResponse.fromJson(Map<String, dynamic> json) => _$TwoFactorEnableResponseFromJson(json);

@override final  String? method;
@override final  String? totpURI;
 final  List<String> _backupCodes;
@override@JsonKey() List<String> get backupCodes {
  if (_backupCodes is EqualUnmodifiableListView) return _backupCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_backupCodes);
}


/// Create a copy of TwoFactorEnableResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TwoFactorEnableResponseCopyWith<_TwoFactorEnableResponse> get copyWith => __$TwoFactorEnableResponseCopyWithImpl<_TwoFactorEnableResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TwoFactorEnableResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TwoFactorEnableResponse&&(identical(other.method, method) || other.method == method)&&(identical(other.totpURI, totpURI) || other.totpURI == totpURI)&&const DeepCollectionEquality().equals(other.backupCodes, _backupCodes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,method,totpURI,const DeepCollectionEquality().hash(_backupCodes));
}

@override
String toString() {
    return 'TwoFactorEnableResponse(method: $method, totpURI: $totpURI, backupCodes: $backupCodes)';
}


}

/// @nodoc
abstract mixin class _$TwoFactorEnableResponseCopyWith<$Res> implements $TwoFactorEnableResponseCopyWith<$Res> {
  factory _$TwoFactorEnableResponseCopyWith(_TwoFactorEnableResponse value, $Res Function(_TwoFactorEnableResponse) _then) = __$TwoFactorEnableResponseCopyWithImpl;
@override @useResult
$Res call({
 String? method, String? totpURI, List<String> backupCodes
});




}
/// @nodoc
class __$TwoFactorEnableResponseCopyWithImpl<$Res>
    implements _$TwoFactorEnableResponseCopyWith<$Res> {
  __$TwoFactorEnableResponseCopyWithImpl(this._self, this._then);

  final _TwoFactorEnableResponse _self;
  final $Res Function(_TwoFactorEnableResponse) _then;

/// Create a copy of TwoFactorEnableResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = freezed,Object? totpURI = freezed,Object? backupCodes = null,}) {
  return _then(_TwoFactorEnableResponse(
method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,totpURI: freezed == totpURI ? _self.totpURI : totpURI // ignore: cast_nullable_to_non_nullable
as String?,backupCodes: null == backupCodes ? _self._backupCodes : backupCodes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$TotpUriResponse {

 String get totpURI;
/// Create a copy of TotpUriResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TotpUriResponseCopyWith<TotpUriResponse> get copyWith => _$TotpUriResponseCopyWithImpl<TotpUriResponse>(this as TotpUriResponse, _$identity);

  /// Serializes this TotpUriResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TotpUriResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TotpUriResponse&&(identical(other.totpURI, _this.totpURI) || other.totpURI == _this.totpURI));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TotpUriResponse;
  return Object.hash(runtimeType,_this.totpURI);
}

@override
String toString() {
  final _this = this as TotpUriResponse;
  return 'TotpUriResponse(totpURI: ${_this.totpURI})';
}


}

/// @nodoc
abstract mixin class $TotpUriResponseCopyWith<$Res>  {
  factory $TotpUriResponseCopyWith(TotpUriResponse value, $Res Function(TotpUriResponse) _then) = _$TotpUriResponseCopyWithImpl;
@useResult
$Res call({
 String totpURI
});




}
/// @nodoc
class _$TotpUriResponseCopyWithImpl<$Res>
    implements $TotpUriResponseCopyWith<$Res> {
  _$TotpUriResponseCopyWithImpl(this._self, this._then);

  final TotpUriResponse _self;
  final $Res Function(TotpUriResponse) _then;

/// Create a copy of TotpUriResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totpURI = null,}) {
  return _then(TotpUriResponse(
totpURI: null == totpURI ? _self.totpURI : totpURI // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TotpUriResponse].
extension TotpUriResponsePatterns on TotpUriResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TotpUriResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TotpUriResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TotpUriResponse value)  $default,){
final _that = this;
switch (_that) {
case _TotpUriResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TotpUriResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TotpUriResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String totpURI)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TotpUriResponse() when $default != null:
return $default(_that.totpURI);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String totpURI)  $default,) {final _that = this;
switch (_that) {
case _TotpUriResponse():
return $default(_that.totpURI);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String totpURI)?  $default,) {final _that = this;
switch (_that) {
case _TotpUriResponse() when $default != null:
return $default(_that.totpURI);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TotpUriResponse implements TotpUriResponse {
  const _TotpUriResponse({required this.totpURI});
  factory _TotpUriResponse.fromJson(Map<String, dynamic> json) => _$TotpUriResponseFromJson(json);

@override final  String totpURI;

/// Create a copy of TotpUriResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TotpUriResponseCopyWith<_TotpUriResponse> get copyWith => __$TotpUriResponseCopyWithImpl<_TotpUriResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TotpUriResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TotpUriResponse&&(identical(other.totpURI, totpURI) || other.totpURI == totpURI));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totpURI);
}

@override
String toString() {
    return 'TotpUriResponse(totpURI: $totpURI)';
}


}

/// @nodoc
abstract mixin class _$TotpUriResponseCopyWith<$Res> implements $TotpUriResponseCopyWith<$Res> {
  factory _$TotpUriResponseCopyWith(_TotpUriResponse value, $Res Function(_TotpUriResponse) _then) = __$TotpUriResponseCopyWithImpl;
@override @useResult
$Res call({
 String totpURI
});




}
/// @nodoc
class __$TotpUriResponseCopyWithImpl<$Res>
    implements _$TotpUriResponseCopyWith<$Res> {
  __$TotpUriResponseCopyWithImpl(this._self, this._then);

  final _TotpUriResponse _self;
  final $Res Function(_TotpUriResponse) _then;

/// Create a copy of TotpUriResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totpURI = null,}) {
  return _then(_TotpUriResponse(
totpURI: null == totpURI ? _self.totpURI : totpURI // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$BackupCodesResponse {

 List<String> get backupCodes; bool? get status;
/// Create a copy of BackupCodesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BackupCodesResponseCopyWith<BackupCodesResponse> get copyWith => _$BackupCodesResponseCopyWithImpl<BackupCodesResponse>(this as BackupCodesResponse, _$identity);

  /// Serializes this BackupCodesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BackupCodesResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BackupCodesResponse&&const DeepCollectionEquality().equals(other.backupCodes, _this.backupCodes)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BackupCodesResponse;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.backupCodes),_this.status);
}

@override
String toString() {
  final _this = this as BackupCodesResponse;
  return 'BackupCodesResponse(backupCodes: ${_this.backupCodes}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $BackupCodesResponseCopyWith<$Res>  {
  factory $BackupCodesResponseCopyWith(BackupCodesResponse value, $Res Function(BackupCodesResponse) _then) = _$BackupCodesResponseCopyWithImpl;
@useResult
$Res call({
 List<String> backupCodes, bool? status
});




}
/// @nodoc
class _$BackupCodesResponseCopyWithImpl<$Res>
    implements $BackupCodesResponseCopyWith<$Res> {
  _$BackupCodesResponseCopyWithImpl(this._self, this._then);

  final BackupCodesResponse _self;
  final $Res Function(BackupCodesResponse) _then;

/// Create a copy of BackupCodesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backupCodes = null,Object? status = freezed,}) {
  return _then(BackupCodesResponse(
backupCodes: null == backupCodes ? _self.backupCodes : backupCodes // ignore: cast_nullable_to_non_nullable
as List<String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [BackupCodesResponse].
extension BackupCodesResponsePatterns on BackupCodesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BackupCodesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BackupCodesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BackupCodesResponse value)  $default,){
final _that = this;
switch (_that) {
case _BackupCodesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BackupCodesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BackupCodesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> backupCodes,  bool? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BackupCodesResponse() when $default != null:
return $default(_that.backupCodes,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> backupCodes,  bool? status)  $default,) {final _that = this;
switch (_that) {
case _BackupCodesResponse():
return $default(_that.backupCodes,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> backupCodes,  bool? status)?  $default,) {final _that = this;
switch (_that) {
case _BackupCodesResponse() when $default != null:
return $default(_that.backupCodes,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BackupCodesResponse implements BackupCodesResponse {
  const _BackupCodesResponse({ List<String> backupCodes = const <String>[], this.status}): _backupCodes = backupCodes;
  factory _BackupCodesResponse.fromJson(Map<String, dynamic> json) => _$BackupCodesResponseFromJson(json);

 final  List<String> _backupCodes;
@override@JsonKey() List<String> get backupCodes {
  if (_backupCodes is EqualUnmodifiableListView) return _backupCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_backupCodes);
}

@override final  bool? status;

/// Create a copy of BackupCodesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BackupCodesResponseCopyWith<_BackupCodesResponse> get copyWith => __$BackupCodesResponseCopyWithImpl<_BackupCodesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BackupCodesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackupCodesResponse&&const DeepCollectionEquality().equals(other.backupCodes, _backupCodes)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_backupCodes),status);
}

@override
String toString() {
    return 'BackupCodesResponse(backupCodes: $backupCodes, status: $status)';
}


}

/// @nodoc
abstract mixin class _$BackupCodesResponseCopyWith<$Res> implements $BackupCodesResponseCopyWith<$Res> {
  factory _$BackupCodesResponseCopyWith(_BackupCodesResponse value, $Res Function(_BackupCodesResponse) _then) = __$BackupCodesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<String> backupCodes, bool? status
});




}
/// @nodoc
class __$BackupCodesResponseCopyWithImpl<$Res>
    implements _$BackupCodesResponseCopyWith<$Res> {
  __$BackupCodesResponseCopyWithImpl(this._self, this._then);

  final _BackupCodesResponse _self;
  final $Res Function(_BackupCodesResponse) _then;

/// Create a copy of BackupCodesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backupCodes = null,Object? status = freezed,}) {
  return _then(_BackupCodesResponse(
backupCodes: null == backupCodes ? _self._backupCodes : backupCodes // ignore: cast_nullable_to_non_nullable
as List<String>,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
