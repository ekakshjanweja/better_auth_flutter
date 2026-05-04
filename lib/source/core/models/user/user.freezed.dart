// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String get id; String get name; String get email; bool get emailVerified; String? get image; DateTime? get createdAt; DateTime? get updatedAt; bool get twoFactorEnabled; String? get username; String? get displayUsername; bool get isAnonymous; String? get phoneNumber; bool get phoneNumberVerified; String? get role; bool get banned; String? get banReason; DateTime? get banExpires;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.twoFactorEnabled, twoFactorEnabled) || other.twoFactorEnabled == twoFactorEnabled)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayUsername, displayUsername) || other.displayUsername == displayUsername)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.phoneNumberVerified, phoneNumberVerified) || other.phoneNumberVerified == phoneNumberVerified)&&(identical(other.role, role) || other.role == role)&&(identical(other.banned, banned) || other.banned == banned)&&(identical(other.banReason, banReason) || other.banReason == banReason)&&(identical(other.banExpires, banExpires) || other.banExpires == banExpires));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,emailVerified,image,createdAt,updatedAt,twoFactorEnabled,username,displayUsername,isAnonymous,phoneNumber,phoneNumberVerified,role,banned,banReason,banExpires);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, emailVerified: $emailVerified, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, twoFactorEnabled: $twoFactorEnabled, username: $username, displayUsername: $displayUsername, isAnonymous: $isAnonymous, phoneNumber: $phoneNumber, phoneNumberVerified: $phoneNumberVerified, role: $role, banned: $banned, banReason: $banReason, banExpires: $banExpires)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, bool emailVerified, String? image, DateTime? createdAt, DateTime? updatedAt, bool twoFactorEnabled, String? username, String? displayUsername, bool isAnonymous, String? phoneNumber, bool phoneNumberVerified, String? role, bool banned, String? banReason, DateTime? banExpires
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? emailVerified = null,Object? image = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? twoFactorEnabled = null,Object? username = freezed,Object? displayUsername = freezed,Object? isAnonymous = null,Object? phoneNumber = freezed,Object? phoneNumberVerified = null,Object? role = freezed,Object? banned = null,Object? banReason = freezed,Object? banExpires = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,twoFactorEnabled: null == twoFactorEnabled ? _self.twoFactorEnabled : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
as bool,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayUsername: freezed == displayUsername ? _self.displayUsername : displayUsername // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumberVerified: null == phoneNumberVerified ? _self.phoneNumberVerified : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,banned: null == banned ? _self.banned : banned // ignore: cast_nullable_to_non_nullable
as bool,banReason: freezed == banReason ? _self.banReason : banReason // ignore: cast_nullable_to_non_nullable
as String?,banExpires: freezed == banExpires ? _self.banExpires : banExpires // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  bool emailVerified,  String? image,  DateTime? createdAt,  DateTime? updatedAt,  bool twoFactorEnabled,  String? username,  String? displayUsername,  bool isAnonymous,  String? phoneNumber,  bool phoneNumberVerified,  String? role,  bool banned,  String? banReason,  DateTime? banExpires)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.emailVerified,_that.image,_that.createdAt,_that.updatedAt,_that.twoFactorEnabled,_that.username,_that.displayUsername,_that.isAnonymous,_that.phoneNumber,_that.phoneNumberVerified,_that.role,_that.banned,_that.banReason,_that.banExpires);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  bool emailVerified,  String? image,  DateTime? createdAt,  DateTime? updatedAt,  bool twoFactorEnabled,  String? username,  String? displayUsername,  bool isAnonymous,  String? phoneNumber,  bool phoneNumberVerified,  String? role,  bool banned,  String? banReason,  DateTime? banExpires)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.emailVerified,_that.image,_that.createdAt,_that.updatedAt,_that.twoFactorEnabled,_that.username,_that.displayUsername,_that.isAnonymous,_that.phoneNumber,_that.phoneNumberVerified,_that.role,_that.banned,_that.banReason,_that.banExpires);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  bool emailVerified,  String? image,  DateTime? createdAt,  DateTime? updatedAt,  bool twoFactorEnabled,  String? username,  String? displayUsername,  bool isAnonymous,  String? phoneNumber,  bool phoneNumberVerified,  String? role,  bool banned,  String? banReason,  DateTime? banExpires)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.emailVerified,_that.image,_that.createdAt,_that.updatedAt,_that.twoFactorEnabled,_that.username,_that.displayUsername,_that.isAnonymous,_that.phoneNumber,_that.phoneNumberVerified,_that.role,_that.banned,_that.banReason,_that.banExpires);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.name, required this.email, this.emailVerified = false, this.image, this.createdAt = null, this.updatedAt = null, this.twoFactorEnabled = false, this.username, this.displayUsername, this.isAnonymous = false, this.phoneNumber, this.phoneNumberVerified = false, this.role, this.banned = false, this.banReason, this.banExpires});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool emailVerified;
@override final  String? image;
@override@JsonKey() final  DateTime? createdAt;
@override@JsonKey() final  DateTime? updatedAt;
@override@JsonKey() final  bool twoFactorEnabled;
@override final  String? username;
@override final  String? displayUsername;
@override@JsonKey() final  bool isAnonymous;
@override final  String? phoneNumber;
@override@JsonKey() final  bool phoneNumberVerified;
@override final  String? role;
@override@JsonKey() final  bool banned;
@override final  String? banReason;
@override final  DateTime? banExpires;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.twoFactorEnabled, twoFactorEnabled) || other.twoFactorEnabled == twoFactorEnabled)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayUsername, displayUsername) || other.displayUsername == displayUsername)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.phoneNumberVerified, phoneNumberVerified) || other.phoneNumberVerified == phoneNumberVerified)&&(identical(other.role, role) || other.role == role)&&(identical(other.banned, banned) || other.banned == banned)&&(identical(other.banReason, banReason) || other.banReason == banReason)&&(identical(other.banExpires, banExpires) || other.banExpires == banExpires));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,emailVerified,image,createdAt,updatedAt,twoFactorEnabled,username,displayUsername,isAnonymous,phoneNumber,phoneNumberVerified,role,banned,banReason,banExpires);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, emailVerified: $emailVerified, image: $image, createdAt: $createdAt, updatedAt: $updatedAt, twoFactorEnabled: $twoFactorEnabled, username: $username, displayUsername: $displayUsername, isAnonymous: $isAnonymous, phoneNumber: $phoneNumber, phoneNumberVerified: $phoneNumberVerified, role: $role, banned: $banned, banReason: $banReason, banExpires: $banExpires)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, bool emailVerified, String? image, DateTime? createdAt, DateTime? updatedAt, bool twoFactorEnabled, String? username, String? displayUsername, bool isAnonymous, String? phoneNumber, bool phoneNumberVerified, String? role, bool banned, String? banReason, DateTime? banExpires
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? emailVerified = null,Object? image = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? twoFactorEnabled = null,Object? username = freezed,Object? displayUsername = freezed,Object? isAnonymous = null,Object? phoneNumber = freezed,Object? phoneNumberVerified = null,Object? role = freezed,Object? banned = null,Object? banReason = freezed,Object? banExpires = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,twoFactorEnabled: null == twoFactorEnabled ? _self.twoFactorEnabled : twoFactorEnabled // ignore: cast_nullable_to_non_nullable
as bool,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayUsername: freezed == displayUsername ? _self.displayUsername : displayUsername // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumberVerified: null == phoneNumberVerified ? _self.phoneNumberVerified : phoneNumberVerified // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,banned: null == banned ? _self.banned : banned // ignore: cast_nullable_to_non_nullable
as bool,banReason: freezed == banReason ? _self.banReason : banReason // ignore: cast_nullable_to_non_nullable
as String?,banExpires: freezed == banExpires ? _self.banExpires : banExpires // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
