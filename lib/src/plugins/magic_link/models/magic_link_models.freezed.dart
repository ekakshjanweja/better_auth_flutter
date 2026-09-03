// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'magic_link_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MagicLinkBody {

 String get email; String? get name; String? get callbackURL; String? get newUserCallbackURL; String? get errorCallbackURL;
/// Create a copy of MagicLinkBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MagicLinkBodyCopyWith<MagicLinkBody> get copyWith => _$MagicLinkBodyCopyWithImpl<MagicLinkBody>(this as MagicLinkBody, _$identity);

  /// Serializes this MagicLinkBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MagicLinkBody;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MagicLinkBody&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.callbackURL, _this.callbackURL) || other.callbackURL == _this.callbackURL)&&(identical(other.newUserCallbackURL, _this.newUserCallbackURL) || other.newUserCallbackURL == _this.newUserCallbackURL)&&(identical(other.errorCallbackURL, _this.errorCallbackURL) || other.errorCallbackURL == _this.errorCallbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MagicLinkBody;
  return Object.hash(runtimeType,_this.email,_this.name,_this.callbackURL,_this.newUserCallbackURL,_this.errorCallbackURL);
}

@override
String toString() {
  final _this = this as MagicLinkBody;
  return 'MagicLinkBody(email: ${_this.email}, name: ${_this.name}, callbackURL: ${_this.callbackURL}, newUserCallbackURL: ${_this.newUserCallbackURL}, errorCallbackURL: ${_this.errorCallbackURL})';
}


}

/// @nodoc
abstract mixin class $MagicLinkBodyCopyWith<$Res>  {
  factory $MagicLinkBodyCopyWith(MagicLinkBody value, $Res Function(MagicLinkBody) _then) = _$MagicLinkBodyCopyWithImpl;
@useResult
$Res call({
 String email, String? name, String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL
});




}
/// @nodoc
class _$MagicLinkBodyCopyWithImpl<$Res>
    implements $MagicLinkBodyCopyWith<$Res> {
  _$MagicLinkBodyCopyWithImpl(this._self, this._then);

  final MagicLinkBody _self;
  final $Res Function(MagicLinkBody) _then;

/// Create a copy of MagicLinkBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = freezed,Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,}) {
  return _then(MagicLinkBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MagicLinkBody].
extension MagicLinkBodyPatterns on MagicLinkBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MagicLinkBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MagicLinkBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MagicLinkBody value)  $default,){
final _that = this;
switch (_that) {
case _MagicLinkBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MagicLinkBody value)?  $default,){
final _that = this;
switch (_that) {
case _MagicLinkBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String? name,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MagicLinkBody() when $default != null:
return $default(_that.email,_that.name,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String? name,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL)  $default,) {final _that = this;
switch (_that) {
case _MagicLinkBody():
return $default(_that.email,_that.name,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String? name,  String? callbackURL,  String? newUserCallbackURL,  String? errorCallbackURL)?  $default,) {final _that = this;
switch (_that) {
case _MagicLinkBody() when $default != null:
return $default(_that.email,_that.name,_that.callbackURL,_that.newUserCallbackURL,_that.errorCallbackURL);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MagicLinkBody implements MagicLinkBody {
  const _MagicLinkBody({required this.email, this.name, this.callbackURL, this.newUserCallbackURL, this.errorCallbackURL});
  factory _MagicLinkBody.fromJson(Map<String, dynamic> json) => _$MagicLinkBodyFromJson(json);

@override final  String email;
@override final  String? name;
@override final  String? callbackURL;
@override final  String? newUserCallbackURL;
@override final  String? errorCallbackURL;

/// Create a copy of MagicLinkBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MagicLinkBodyCopyWith<_MagicLinkBody> get copyWith => __$MagicLinkBodyCopyWithImpl<_MagicLinkBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MagicLinkBodyToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MagicLinkBody&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,email,name,callbackURL,newUserCallbackURL,errorCallbackURL);
}

@override
String toString() {
    return 'MagicLinkBody(email: $email, name: $name, callbackURL: $callbackURL, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL)';
}


}

/// @nodoc
abstract mixin class _$MagicLinkBodyCopyWith<$Res> implements $MagicLinkBodyCopyWith<$Res> {
  factory _$MagicLinkBodyCopyWith(_MagicLinkBody value, $Res Function(_MagicLinkBody) _then) = __$MagicLinkBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String? name, String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL
});




}
/// @nodoc
class __$MagicLinkBodyCopyWithImpl<$Res>
    implements _$MagicLinkBodyCopyWith<$Res> {
  __$MagicLinkBodyCopyWithImpl(this._self, this._then);

  final _MagicLinkBody _self;
  final $Res Function(_MagicLinkBody) _then;

/// Create a copy of MagicLinkBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = freezed,Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,}) {
  return _then(_MagicLinkBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
