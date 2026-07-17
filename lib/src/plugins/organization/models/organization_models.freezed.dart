// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Organization {

 String get id; String get name; String? get slug; String? get logo; DateTime? get createdAt; Map<String, dynamic>? get metadata;
/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationCopyWith<Organization> get copyWith => _$OrganizationCopyWithImpl<Organization>(this as Organization, _$identity);

  /// Serializes this Organization to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Organization&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,logo,createdAt,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'Organization(id: $id, name: $name, slug: $slug, logo: $logo, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $OrganizationCopyWith<$Res>  {
  factory $OrganizationCopyWith(Organization value, $Res Function(Organization) _then) = _$OrganizationCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? logo, DateTime? createdAt, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$OrganizationCopyWithImpl<$Res>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._self, this._then);

  final Organization _self;
  final $Res Function(Organization) _then;

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logo = freezed,Object? createdAt = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Organization].
extension OrganizationPatterns on Organization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Organization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Organization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Organization value)  $default,){
final _that = this;
switch (_that) {
case _Organization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Organization value)?  $default,){
final _that = this;
switch (_that) {
case _Organization() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logo,  DateTime? createdAt,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logo,  DateTime? createdAt,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _Organization():
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.createdAt,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? logo,  DateTime? createdAt,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _Organization() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.createdAt,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Organization implements Organization {
  const _Organization({required this.id, required this.name, this.slug, this.logo, this.createdAt, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _Organization.fromJson(Map<String, dynamic> json) => _$OrganizationFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
@override final  String? logo;
@override final  DateTime? createdAt;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationCopyWith<_Organization> get copyWith => __$OrganizationCopyWithImpl<_Organization>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Organization&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,logo,createdAt,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'Organization(id: $id, name: $name, slug: $slug, logo: $logo, createdAt: $createdAt, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$OrganizationCopyWith<$Res> implements $OrganizationCopyWith<$Res> {
  factory _$OrganizationCopyWith(_Organization value, $Res Function(_Organization) _then) = __$OrganizationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? logo, DateTime? createdAt, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$OrganizationCopyWithImpl<$Res>
    implements _$OrganizationCopyWith<$Res> {
  __$OrganizationCopyWithImpl(this._self, this._then);

  final _Organization _self;
  final $Res Function(_Organization) _then;

/// Create a copy of Organization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logo = freezed,Object? createdAt = freezed,Object? metadata = freezed,}) {
  return _then(_Organization(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$Member {

 String get id; String get userId; String get organizationId; String get role; String? get name; String? get email; String? get image; DateTime? get createdAt;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,organizationId,role,name,email,image,createdAt);

@override
String toString() {
  return 'Member(id: $id, userId: $userId, organizationId: $organizationId, role: $role, name: $name, email: $email, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String organizationId, String role, String? name, String? email, String? image, DateTime? createdAt
});




}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? organizationId = null,Object? role = null,Object? name = freezed,Object? email = freezed,Object? image = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Member].
extension MemberPatterns on Member {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Member value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Member value)  $default,){
final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Member value)?  $default,){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String organizationId,  String role,  String? name,  String? email,  String? image,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.userId,_that.organizationId,_that.role,_that.name,_that.email,_that.image,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String organizationId,  String role,  String? name,  String? email,  String? image,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Member():
return $default(_that.id,_that.userId,_that.organizationId,_that.role,_that.name,_that.email,_that.image,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String organizationId,  String role,  String? name,  String? email,  String? image,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Member() when $default != null:
return $default(_that.id,_that.userId,_that.organizationId,_that.role,_that.name,_that.email,_that.image,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Member implements Member {
  const _Member({required this.id, required this.userId, required this.organizationId, required this.role, this.name, this.email, this.image, this.createdAt});
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String organizationId;
@override final  String role;
@override final  String? name;
@override final  String? email;
@override final  String? image;
@override final  DateTime? createdAt;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.role, role) || other.role == role)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.image, image) || other.image == image)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,organizationId,role,name,email,image,createdAt);

@override
String toString() {
  return 'Member(id: $id, userId: $userId, organizationId: $organizationId, role: $role, name: $name, email: $email, image: $image, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String organizationId, String role, String? name, String? email, String? image, DateTime? createdAt
});




}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? organizationId = null,Object? role = null,Object? name = freezed,Object? email = freezed,Object? image = freezed,Object? createdAt = freezed,}) {
  return _then(_Member(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$Invitation {

 String get id; String get organizationId; String get email; String get role;/// One of `pending`, `accepted`, `rejected`, `canceled`.
 String get status; String? get inviterId; DateTime? get expiresAt;
/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationCopyWith<Invitation> get copyWith => _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);

  /// Serializes this Invitation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.inviterId, inviterId) || other.inviterId == inviterId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,email,role,status,inviterId,expiresAt);

@override
String toString() {
  return 'Invitation(id: $id, organizationId: $organizationId, email: $email, role: $role, status: $status, inviterId: $inviterId, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $InvitationCopyWith<$Res>  {
  factory $InvitationCopyWith(Invitation value, $Res Function(Invitation) _then) = _$InvitationCopyWithImpl;
@useResult
$Res call({
 String id, String organizationId, String email, String role, String status, String? inviterId, DateTime? expiresAt
});




}
/// @nodoc
class _$InvitationCopyWithImpl<$Res>
    implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._self, this._then);

  final Invitation _self;
  final $Res Function(Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? email = null,Object? role = null,Object? status = null,Object? inviterId = freezed,Object? expiresAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,inviterId: freezed == inviterId ? _self.inviterId : inviterId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Invitation].
extension InvitationPatterns on Invitation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Invitation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Invitation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Invitation value)  $default,){
final _that = this;
switch (_that) {
case _Invitation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Invitation value)?  $default,){
final _that = this;
switch (_that) {
case _Invitation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String organizationId,  String email,  String role,  String status,  String? inviterId,  DateTime? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Invitation() when $default != null:
return $default(_that.id,_that.organizationId,_that.email,_that.role,_that.status,_that.inviterId,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String organizationId,  String email,  String role,  String status,  String? inviterId,  DateTime? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _Invitation():
return $default(_that.id,_that.organizationId,_that.email,_that.role,_that.status,_that.inviterId,_that.expiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String organizationId,  String email,  String role,  String status,  String? inviterId,  DateTime? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _Invitation() when $default != null:
return $default(_that.id,_that.organizationId,_that.email,_that.role,_that.status,_that.inviterId,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Invitation implements Invitation {
  const _Invitation({required this.id, required this.organizationId, required this.email, required this.role, required this.status, this.inviterId, this.expiresAt});
  factory _Invitation.fromJson(Map<String, dynamic> json) => _$InvitationFromJson(json);

@override final  String id;
@override final  String organizationId;
@override final  String email;
@override final  String role;
/// One of `pending`, `accepted`, `rejected`, `canceled`.
@override final  String status;
@override final  String? inviterId;
@override final  DateTime? expiresAt;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationCopyWith<_Invitation> get copyWith => __$InvitationCopyWithImpl<_Invitation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvitationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.inviterId, inviterId) || other.inviterId == inviterId)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,email,role,status,inviterId,expiresAt);

@override
String toString() {
  return 'Invitation(id: $id, organizationId: $organizationId, email: $email, role: $role, status: $status, inviterId: $inviterId, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$InvitationCopyWith<$Res> implements $InvitationCopyWith<$Res> {
  factory _$InvitationCopyWith(_Invitation value, $Res Function(_Invitation) _then) = __$InvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, String organizationId, String email, String role, String status, String? inviterId, DateTime? expiresAt
});




}
/// @nodoc
class __$InvitationCopyWithImpl<$Res>
    implements _$InvitationCopyWith<$Res> {
  __$InvitationCopyWithImpl(this._self, this._then);

  final _Invitation _self;
  final $Res Function(_Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? email = null,Object? role = null,Object? status = null,Object? inviterId = freezed,Object? expiresAt = freezed,}) {
  return _then(_Invitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,inviterId: freezed == inviterId ? _self.inviterId : inviterId // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$FullOrganization {

 String get id; String get name; String? get slug; String? get logo; Map<String, dynamic>? get metadata; List<Member> get members; List<Invitation> get invitations;
/// Create a copy of FullOrganization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullOrganizationCopyWith<FullOrganization> get copyWith => _$FullOrganizationCopyWithImpl<FullOrganization>(this as FullOrganization, _$identity);

  /// Serializes this FullOrganization to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullOrganization&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.members, members)&&const DeepCollectionEquality().equals(other.invitations, invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,logo,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(members),const DeepCollectionEquality().hash(invitations));

@override
String toString() {
  return 'FullOrganization(id: $id, name: $name, slug: $slug, logo: $logo, metadata: $metadata, members: $members, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class $FullOrganizationCopyWith<$Res>  {
  factory $FullOrganizationCopyWith(FullOrganization value, $Res Function(FullOrganization) _then) = _$FullOrganizationCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? slug, String? logo, Map<String, dynamic>? metadata, List<Member> members, List<Invitation> invitations
});




}
/// @nodoc
class _$FullOrganizationCopyWithImpl<$Res>
    implements $FullOrganizationCopyWith<$Res> {
  _$FullOrganizationCopyWithImpl(this._self, this._then);

  final FullOrganization _self;
  final $Res Function(FullOrganization) _then;

/// Create a copy of FullOrganization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logo = freezed,Object? metadata = freezed,Object? members = null,Object? invitations = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,invitations: null == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<Invitation>,
  ));
}

}


/// Adds pattern-matching-related methods to [FullOrganization].
extension FullOrganizationPatterns on FullOrganization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FullOrganization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FullOrganization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FullOrganization value)  $default,){
final _that = this;
switch (_that) {
case _FullOrganization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FullOrganization value)?  $default,){
final _that = this;
switch (_that) {
case _FullOrganization() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logo,  Map<String, dynamic>? metadata,  List<Member> members,  List<Invitation> invitations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FullOrganization() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.metadata,_that.members,_that.invitations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? slug,  String? logo,  Map<String, dynamic>? metadata,  List<Member> members,  List<Invitation> invitations)  $default,) {final _that = this;
switch (_that) {
case _FullOrganization():
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.metadata,_that.members,_that.invitations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? slug,  String? logo,  Map<String, dynamic>? metadata,  List<Member> members,  List<Invitation> invitations)?  $default,) {final _that = this;
switch (_that) {
case _FullOrganization() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.logo,_that.metadata,_that.members,_that.invitations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FullOrganization implements FullOrganization {
  const _FullOrganization({required this.id, required this.name, this.slug, this.logo, final  Map<String, dynamic>? metadata, final  List<Member> members = const <Member>[], final  List<Invitation> invitations = const <Invitation>[]}): _metadata = metadata,_members = members,_invitations = invitations;
  factory _FullOrganization.fromJson(Map<String, dynamic> json) => _$FullOrganizationFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? slug;
@override final  String? logo;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Member> _members;
@override@JsonKey() List<Member> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

 final  List<Invitation> _invitations;
@override@JsonKey() List<Invitation> get invitations {
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invitations);
}


/// Create a copy of FullOrganization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullOrganizationCopyWith<_FullOrganization> get copyWith => __$FullOrganizationCopyWithImpl<_FullOrganization>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FullOrganizationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullOrganization&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._members, _members)&&const DeepCollectionEquality().equals(other._invitations, _invitations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,logo,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_members),const DeepCollectionEquality().hash(_invitations));

@override
String toString() {
  return 'FullOrganization(id: $id, name: $name, slug: $slug, logo: $logo, metadata: $metadata, members: $members, invitations: $invitations)';
}


}

/// @nodoc
abstract mixin class _$FullOrganizationCopyWith<$Res> implements $FullOrganizationCopyWith<$Res> {
  factory _$FullOrganizationCopyWith(_FullOrganization value, $Res Function(_FullOrganization) _then) = __$FullOrganizationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? slug, String? logo, Map<String, dynamic>? metadata, List<Member> members, List<Invitation> invitations
});




}
/// @nodoc
class __$FullOrganizationCopyWithImpl<$Res>
    implements _$FullOrganizationCopyWith<$Res> {
  __$FullOrganizationCopyWithImpl(this._self, this._then);

  final _FullOrganization _self;
  final $Res Function(_FullOrganization) _then;

/// Create a copy of FullOrganization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = freezed,Object? logo = freezed,Object? metadata = freezed,Object? members = null,Object? invitations = null,}) {
  return _then(_FullOrganization(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,invitations: null == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<Invitation>,
  ));
}


}


/// @nodoc
mixin _$CreateOrganizationBody {

 String get name; String get slug; String? get logo; Map<String, dynamic>? get metadata;
/// Create a copy of CreateOrganizationBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrganizationBodyCopyWith<CreateOrganizationBody> get copyWith => _$CreateOrganizationBodyCopyWithImpl<CreateOrganizationBody>(this as CreateOrganizationBody, _$identity);

  /// Serializes this CreateOrganizationBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrganizationBody&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other.metadata, metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,logo,const DeepCollectionEquality().hash(metadata));

@override
String toString() {
  return 'CreateOrganizationBody(name: $name, slug: $slug, logo: $logo, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $CreateOrganizationBodyCopyWith<$Res>  {
  factory $CreateOrganizationBodyCopyWith(CreateOrganizationBody value, $Res Function(CreateOrganizationBody) _then) = _$CreateOrganizationBodyCopyWithImpl;
@useResult
$Res call({
 String name, String slug, String? logo, Map<String, dynamic>? metadata
});




}
/// @nodoc
class _$CreateOrganizationBodyCopyWithImpl<$Res>
    implements $CreateOrganizationBodyCopyWith<$Res> {
  _$CreateOrganizationBodyCopyWithImpl(this._self, this._then);

  final CreateOrganizationBody _self;
  final $Res Function(CreateOrganizationBody) _then;

/// Create a copy of CreateOrganizationBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? slug = null,Object? logo = freezed,Object? metadata = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrganizationBody].
extension CreateOrganizationBodyPatterns on CreateOrganizationBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrganizationBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrganizationBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrganizationBody value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrganizationBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrganizationBody value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrganizationBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String slug,  String? logo,  Map<String, dynamic>? metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrganizationBody() when $default != null:
return $default(_that.name,_that.slug,_that.logo,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String slug,  String? logo,  Map<String, dynamic>? metadata)  $default,) {final _that = this;
switch (_that) {
case _CreateOrganizationBody():
return $default(_that.name,_that.slug,_that.logo,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String slug,  String? logo,  Map<String, dynamic>? metadata)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrganizationBody() when $default != null:
return $default(_that.name,_that.slug,_that.logo,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrganizationBody implements CreateOrganizationBody {
  const _CreateOrganizationBody({required this.name, required this.slug, this.logo, final  Map<String, dynamic>? metadata}): _metadata = metadata;
  factory _CreateOrganizationBody.fromJson(Map<String, dynamic> json) => _$CreateOrganizationBodyFromJson(json);

@override final  String name;
@override final  String slug;
@override final  String? logo;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CreateOrganizationBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrganizationBodyCopyWith<_CreateOrganizationBody> get copyWith => __$CreateOrganizationBodyCopyWithImpl<_CreateOrganizationBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrganizationBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrganizationBody&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.logo, logo) || other.logo == logo)&&const DeepCollectionEquality().equals(other._metadata, _metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,slug,logo,const DeepCollectionEquality().hash(_metadata));

@override
String toString() {
  return 'CreateOrganizationBody(name: $name, slug: $slug, logo: $logo, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$CreateOrganizationBodyCopyWith<$Res> implements $CreateOrganizationBodyCopyWith<$Res> {
  factory _$CreateOrganizationBodyCopyWith(_CreateOrganizationBody value, $Res Function(_CreateOrganizationBody) _then) = __$CreateOrganizationBodyCopyWithImpl;
@override @useResult
$Res call({
 String name, String slug, String? logo, Map<String, dynamic>? metadata
});




}
/// @nodoc
class __$CreateOrganizationBodyCopyWithImpl<$Res>
    implements _$CreateOrganizationBodyCopyWith<$Res> {
  __$CreateOrganizationBodyCopyWithImpl(this._self, this._then);

  final _CreateOrganizationBody _self;
  final $Res Function(_CreateOrganizationBody) _then;

/// Create a copy of CreateOrganizationBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? slug = null,Object? logo = freezed,Object? metadata = freezed,}) {
  return _then(_CreateOrganizationBody(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$InviteMemberBody {

 String get email; String get role; String? get organizationId; bool? get resend;
/// Create a copy of InviteMemberBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InviteMemberBodyCopyWith<InviteMemberBody> get copyWith => _$InviteMemberBodyCopyWithImpl<InviteMemberBody>(this as InviteMemberBody, _$identity);

  /// Serializes this InviteMemberBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InviteMemberBody&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.resend, resend) || other.resend == resend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,role,organizationId,resend);

@override
String toString() {
  return 'InviteMemberBody(email: $email, role: $role, organizationId: $organizationId, resend: $resend)';
}


}

/// @nodoc
abstract mixin class $InviteMemberBodyCopyWith<$Res>  {
  factory $InviteMemberBodyCopyWith(InviteMemberBody value, $Res Function(InviteMemberBody) _then) = _$InviteMemberBodyCopyWithImpl;
@useResult
$Res call({
 String email, String role, String? organizationId, bool? resend
});




}
/// @nodoc
class _$InviteMemberBodyCopyWithImpl<$Res>
    implements $InviteMemberBodyCopyWith<$Res> {
  _$InviteMemberBodyCopyWithImpl(this._self, this._then);

  final InviteMemberBody _self;
  final $Res Function(InviteMemberBody) _then;

/// Create a copy of InviteMemberBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? role = null,Object? organizationId = freezed,Object? resend = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,resend: freezed == resend ? _self.resend : resend // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [InviteMemberBody].
extension InviteMemberBodyPatterns on InviteMemberBody {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InviteMemberBody value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InviteMemberBody() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InviteMemberBody value)  $default,){
final _that = this;
switch (_that) {
case _InviteMemberBody():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InviteMemberBody value)?  $default,){
final _that = this;
switch (_that) {
case _InviteMemberBody() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String role,  String? organizationId,  bool? resend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InviteMemberBody() when $default != null:
return $default(_that.email,_that.role,_that.organizationId,_that.resend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String role,  String? organizationId,  bool? resend)  $default,) {final _that = this;
switch (_that) {
case _InviteMemberBody():
return $default(_that.email,_that.role,_that.organizationId,_that.resend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String role,  String? organizationId,  bool? resend)?  $default,) {final _that = this;
switch (_that) {
case _InviteMemberBody() when $default != null:
return $default(_that.email,_that.role,_that.organizationId,_that.resend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InviteMemberBody implements InviteMemberBody {
  const _InviteMemberBody({required this.email, required this.role, this.organizationId, this.resend});
  factory _InviteMemberBody.fromJson(Map<String, dynamic> json) => _$InviteMemberBodyFromJson(json);

@override final  String email;
@override final  String role;
@override final  String? organizationId;
@override final  bool? resend;

/// Create a copy of InviteMemberBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InviteMemberBodyCopyWith<_InviteMemberBody> get copyWith => __$InviteMemberBodyCopyWithImpl<_InviteMemberBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InviteMemberBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InviteMemberBody&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.resend, resend) || other.resend == resend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,role,organizationId,resend);

@override
String toString() {
  return 'InviteMemberBody(email: $email, role: $role, organizationId: $organizationId, resend: $resend)';
}


}

/// @nodoc
abstract mixin class _$InviteMemberBodyCopyWith<$Res> implements $InviteMemberBodyCopyWith<$Res> {
  factory _$InviteMemberBodyCopyWith(_InviteMemberBody value, $Res Function(_InviteMemberBody) _then) = __$InviteMemberBodyCopyWithImpl;
@override @useResult
$Res call({
 String email, String role, String? organizationId, bool? resend
});




}
/// @nodoc
class __$InviteMemberBodyCopyWithImpl<$Res>
    implements _$InviteMemberBodyCopyWith<$Res> {
  __$InviteMemberBodyCopyWithImpl(this._self, this._then);

  final _InviteMemberBody _self;
  final $Res Function(_InviteMemberBody) _then;

/// Create a copy of InviteMemberBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? role = null,Object? organizationId = freezed,Object? resend = freezed,}) {
  return _then(_InviteMemberBody(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,organizationId: freezed == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String?,resend: freezed == resend ? _self.resend : resend // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
