// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteUserRequest {

 String? get callbackURL; String? get password; String? get token;
/// Create a copy of DeleteUserRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserRequestCopyWith<DeleteUserRequest> get copyWith => _$DeleteUserRequestCopyWithImpl<DeleteUserRequest>(this as DeleteUserRequest, _$identity);

  /// Serializes this DeleteUserRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserRequest&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,password,token);

@override
String toString() {
  return 'DeleteUserRequest(callbackURL: $callbackURL, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class $DeleteUserRequestCopyWith<$Res>  {
  factory $DeleteUserRequestCopyWith(DeleteUserRequest value, $Res Function(DeleteUserRequest) _then) = _$DeleteUserRequestCopyWithImpl;
@useResult
$Res call({
 String? callbackURL, String? password, String? token
});




}
/// @nodoc
class _$DeleteUserRequestCopyWithImpl<$Res>
    implements $DeleteUserRequestCopyWith<$Res> {
  _$DeleteUserRequestCopyWithImpl(this._self, this._then);

  final DeleteUserRequest _self;
  final $Res Function(DeleteUserRequest) _then;

/// Create a copy of DeleteUserRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callbackURL = freezed,Object? password = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteUserRequest].
extension DeleteUserRequestPatterns on DeleteUserRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteUserRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteUserRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteUserRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeleteUserRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteUserRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteUserRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? callbackURL,  String? password,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteUserRequest() when $default != null:
return $default(_that.callbackURL,_that.password,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? callbackURL,  String? password,  String? token)  $default,) {final _that = this;
switch (_that) {
case _DeleteUserRequest():
return $default(_that.callbackURL,_that.password,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? callbackURL,  String? password,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _DeleteUserRequest() when $default != null:
return $default(_that.callbackURL,_that.password,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteUserRequest implements DeleteUserRequest {
  const _DeleteUserRequest({this.callbackURL, this.password, this.token});
  factory _DeleteUserRequest.fromJson(Map<String, dynamic> json) => _$DeleteUserRequestFromJson(json);

@override final  String? callbackURL;
@override final  String? password;
@override final  String? token;

/// Create a copy of DeleteUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserRequestCopyWith<_DeleteUserRequest> get copyWith => __$DeleteUserRequestCopyWithImpl<_DeleteUserRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteUserRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserRequest&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,password,token);

@override
String toString() {
  return 'DeleteUserRequest(callbackURL: $callbackURL, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserRequestCopyWith<$Res> implements $DeleteUserRequestCopyWith<$Res> {
  factory _$DeleteUserRequestCopyWith(_DeleteUserRequest value, $Res Function(_DeleteUserRequest) _then) = __$DeleteUserRequestCopyWithImpl;
@override @useResult
$Res call({
 String? callbackURL, String? password, String? token
});




}
/// @nodoc
class __$DeleteUserRequestCopyWithImpl<$Res>
    implements _$DeleteUserRequestCopyWith<$Res> {
  __$DeleteUserRequestCopyWithImpl(this._self, this._then);

  final _DeleteUserRequest _self;
  final $Res Function(_DeleteUserRequest) _then;

/// Create a copy of DeleteUserRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callbackURL = freezed,Object? password = freezed,Object? token = freezed,}) {
  return _then(_DeleteUserRequest(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
