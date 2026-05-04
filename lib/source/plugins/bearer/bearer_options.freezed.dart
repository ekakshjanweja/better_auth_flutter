// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bearer_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BearerOptions {

 bool get requireSignature;
/// Create a copy of BearerOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BearerOptionsCopyWith<BearerOptions> get copyWith => _$BearerOptionsCopyWithImpl<BearerOptions>(this as BearerOptions, _$identity);

  /// Serializes this BearerOptions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BearerOptions&&(identical(other.requireSignature, requireSignature) || other.requireSignature == requireSignature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requireSignature);

@override
String toString() {
  return 'BearerOptions(requireSignature: $requireSignature)';
}


}

/// @nodoc
abstract mixin class $BearerOptionsCopyWith<$Res>  {
  factory $BearerOptionsCopyWith(BearerOptions value, $Res Function(BearerOptions) _then) = _$BearerOptionsCopyWithImpl;
@useResult
$Res call({
 bool requireSignature
});




}
/// @nodoc
class _$BearerOptionsCopyWithImpl<$Res>
    implements $BearerOptionsCopyWith<$Res> {
  _$BearerOptionsCopyWithImpl(this._self, this._then);

  final BearerOptions _self;
  final $Res Function(BearerOptions) _then;

/// Create a copy of BearerOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requireSignature = null,}) {
  return _then(_self.copyWith(
requireSignature: null == requireSignature ? _self.requireSignature : requireSignature // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BearerOptions].
extension BearerOptionsPatterns on BearerOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BearerOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BearerOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BearerOptions value)  $default,){
final _that = this;
switch (_that) {
case _BearerOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BearerOptions value)?  $default,){
final _that = this;
switch (_that) {
case _BearerOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool requireSignature)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BearerOptions() when $default != null:
return $default(_that.requireSignature);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool requireSignature)  $default,) {final _that = this;
switch (_that) {
case _BearerOptions():
return $default(_that.requireSignature);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool requireSignature)?  $default,) {final _that = this;
switch (_that) {
case _BearerOptions() when $default != null:
return $default(_that.requireSignature);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BearerOptions extends BearerOptions {
  const _BearerOptions({this.requireSignature = false}): super._();
  factory _BearerOptions.fromJson(Map<String, dynamic> json) => _$BearerOptionsFromJson(json);

@override@JsonKey() final  bool requireSignature;

/// Create a copy of BearerOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BearerOptionsCopyWith<_BearerOptions> get copyWith => __$BearerOptionsCopyWithImpl<_BearerOptions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BearerOptionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BearerOptions&&(identical(other.requireSignature, requireSignature) || other.requireSignature == requireSignature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requireSignature);

@override
String toString() {
  return 'BearerOptions(requireSignature: $requireSignature)';
}


}

/// @nodoc
abstract mixin class _$BearerOptionsCopyWith<$Res> implements $BearerOptionsCopyWith<$Res> {
  factory _$BearerOptionsCopyWith(_BearerOptions value, $Res Function(_BearerOptions) _then) = __$BearerOptionsCopyWithImpl;
@override @useResult
$Res call({
 bool requireSignature
});




}
/// @nodoc
class __$BearerOptionsCopyWithImpl<$Res>
    implements _$BearerOptionsCopyWith<$Res> {
  __$BearerOptionsCopyWithImpl(this._self, this._then);

  final _BearerOptions _self;
  final $Res Function(_BearerOptions) _then;

/// Create a copy of BearerOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requireSignature = null,}) {
  return _then(_BearerOptions(
requireSignature: null == requireSignature ? _self.requireSignature : requireSignature // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
