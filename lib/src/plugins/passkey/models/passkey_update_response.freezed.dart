// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PasskeyUpdateResponse {

 PasskeyRecord get passkey;
/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasskeyUpdateResponseCopyWith<PasskeyUpdateResponse> get copyWith => _$PasskeyUpdateResponseCopyWithImpl<PasskeyUpdateResponse>(this as PasskeyUpdateResponse, _$identity);

  /// Serializes this PasskeyUpdateResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PasskeyUpdateResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasskeyUpdateResponse&&(identical(other.passkey, _this.passkey) || other.passkey == _this.passkey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PasskeyUpdateResponse;
  return Object.hash(runtimeType,_this.passkey);
}

@override
String toString() {
  final _this = this as PasskeyUpdateResponse;
  return 'PasskeyUpdateResponse(passkey: ${_this.passkey})';
}


}

/// @nodoc
abstract mixin class $PasskeyUpdateResponseCopyWith<$Res>  {
  factory $PasskeyUpdateResponseCopyWith(PasskeyUpdateResponse value, $Res Function(PasskeyUpdateResponse) _then) = _$PasskeyUpdateResponseCopyWithImpl;
@useResult
$Res call({
 PasskeyRecord passkey
});


$PasskeyRecordCopyWith<$Res> get passkey;

}
/// @nodoc
class _$PasskeyUpdateResponseCopyWithImpl<$Res>
    implements $PasskeyUpdateResponseCopyWith<$Res> {
  _$PasskeyUpdateResponseCopyWithImpl(this._self, this._then);

  final PasskeyUpdateResponse _self;
  final $Res Function(PasskeyUpdateResponse) _then;

/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? passkey = null,}) {
  return _then(PasskeyUpdateResponse(
passkey: null == passkey ? _self.passkey : passkey // ignore: cast_nullable_to_non_nullable
as PasskeyRecord,
  ));
}
/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasskeyRecordCopyWith<$Res> get passkey {
  
  return $PasskeyRecordCopyWith<$Res>(_self.passkey, (value) {
    return _then(_self.copyWith(passkey: value));
  });
}
}


/// Adds pattern-matching-related methods to [PasskeyUpdateResponse].
extension PasskeyUpdateResponsePatterns on PasskeyUpdateResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PasskeyUpdateResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PasskeyUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PasskeyUpdateResponse value)  $default,){
final _that = this;
switch (_that) {
case _PasskeyUpdateResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PasskeyUpdateResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PasskeyUpdateResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PasskeyRecord passkey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PasskeyUpdateResponse() when $default != null:
return $default(_that.passkey);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PasskeyRecord passkey)  $default,) {final _that = this;
switch (_that) {
case _PasskeyUpdateResponse():
return $default(_that.passkey);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PasskeyRecord passkey)?  $default,) {final _that = this;
switch (_that) {
case _PasskeyUpdateResponse() when $default != null:
return $default(_that.passkey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PasskeyUpdateResponse implements PasskeyUpdateResponse {
  const _PasskeyUpdateResponse({required this.passkey});
  factory _PasskeyUpdateResponse.fromJson(Map<String, dynamic> json) => _$PasskeyUpdateResponseFromJson(json);

@override final  PasskeyRecord passkey;

/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PasskeyUpdateResponseCopyWith<_PasskeyUpdateResponse> get copyWith => __$PasskeyUpdateResponseCopyWithImpl<_PasskeyUpdateResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PasskeyUpdateResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasskeyUpdateResponse&&(identical(other.passkey, passkey) || other.passkey == passkey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,passkey);
}

@override
String toString() {
    return 'PasskeyUpdateResponse(passkey: $passkey)';
}


}

/// @nodoc
abstract mixin class _$PasskeyUpdateResponseCopyWith<$Res> implements $PasskeyUpdateResponseCopyWith<$Res> {
  factory _$PasskeyUpdateResponseCopyWith(_PasskeyUpdateResponse value, $Res Function(_PasskeyUpdateResponse) _then) = __$PasskeyUpdateResponseCopyWithImpl;
@override @useResult
$Res call({
 PasskeyRecord passkey
});


@override $PasskeyRecordCopyWith<$Res> get passkey;

}
/// @nodoc
class __$PasskeyUpdateResponseCopyWithImpl<$Res>
    implements _$PasskeyUpdateResponseCopyWith<$Res> {
  __$PasskeyUpdateResponseCopyWithImpl(this._self, this._then);

  final _PasskeyUpdateResponse _self;
  final $Res Function(_PasskeyUpdateResponse) _then;

/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? passkey = null,}) {
  return _then(_PasskeyUpdateResponse(
passkey: null == passkey ? _self.passkey : passkey // ignore: cast_nullable_to_non_nullable
as PasskeyRecord,
  ));
}

/// Create a copy of PasskeyUpdateResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PasskeyRecordCopyWith<$Res> get passkey {
  
  return $PasskeyRecordCopyWith<$Res>(_self.passkey, (value) {
    return _then(_self.copyWith(passkey: value));
  });
}
}

// dart format on
