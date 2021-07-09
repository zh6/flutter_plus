// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
class _$UserEntityTearOff {
  const _$UserEntityTearOff();

  _UserEntity call(
      int id,
      String username,
      String password,
      String? salt,
      String? nickName,
      String? headPortrait,
      String? phone,
      String? email,
      int? sex,
      String? introduce,
      int status,
      int? createWhere,
      String? pairId) {
    return _UserEntity(
      id,
      username,
      password,
      salt,
      nickName,
      headPortrait,
      phone,
      email,
      sex,
      introduce,
      status,
      createWhere,
      pairId,
    );
  }

  UserEntity fromJson(Map<String, Object> json) {
    return UserEntity.fromJson(json);
  }
}

/// @nodoc
const $UserEntity = _$UserEntityTearOff();

/// @nodoc
mixin _$UserEntity {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get salt => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get headPortrait => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get sex => throw _privateConstructorUsedError;
  String? get introduce => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int? get createWhere => throw _privateConstructorUsedError;
  String? get pairId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String username,
      String password,
      String? salt,
      String? nickName,
      String? headPortrait,
      String? phone,
      String? email,
      int? sex,
      String? introduce,
      int status,
      int? createWhere,
      String? pairId});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? salt = freezed,
    Object? nickName = freezed,
    Object? headPortrait = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? sex = freezed,
    Object? introduce = freezed,
    Object? status = freezed,
    Object? createWhere = freezed,
    Object? pairId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt: salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      headPortrait: headPortrait == freezed
          ? _value.headPortrait
          : headPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      introduce: introduce == freezed
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createWhere: createWhere == freezed
          ? _value.createWhere
          : createWhere // ignore: cast_nullable_to_non_nullable
              as int?,
      pairId: pairId == freezed
          ? _value.pairId
          : pairId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) then) =
      __$UserEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String username,
      String password,
      String? salt,
      String? nickName,
      String? headPortrait,
      String? phone,
      String? email,
      int? sex,
      String? introduce,
      int status,
      int? createWhere,
      String? pairId});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(
      _UserEntity _value, $Res Function(_UserEntity) _then)
      : super(_value, (v) => _then(v as _UserEntity));

  @override
  _UserEntity get _value => super._value as _UserEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? salt = freezed,
    Object? nickName = freezed,
    Object? headPortrait = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? sex = freezed,
    Object? introduce = freezed,
    Object? status = freezed,
    Object? createWhere = freezed,
    Object? pairId = freezed,
  }) {
    return _then(_UserEntity(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      salt == freezed
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      headPortrait == freezed
          ? _value.headPortrait
          : headPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      introduce == freezed
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createWhere == freezed
          ? _value.createWhere
          : createWhere // ignore: cast_nullable_to_non_nullable
              as int?,
      pairId == freezed
          ? _value.pairId
          : pairId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      this.id,
      this.username,
      this.password,
      this.salt,
      this.nickName,
      this.headPortrait,
      this.phone,
      this.email,
      this.sex,
      this.introduce,
      this.status,
      this.createWhere,
      this.pairId);

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_UserEntityFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String password;
  @override
  final String? salt;
  @override
  final String? nickName;
  @override
  final String? headPortrait;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final int? sex;
  @override
  final String? introduce;
  @override
  final int status;
  @override
  final int? createWhere;
  @override
  final String? pairId;

  @override
  String toString() {
    return 'UserEntity(id: $id, username: $username, password: $password, salt: $salt, nickName: $nickName, headPortrait: $headPortrait, phone: $phone, email: $email, sex: $sex, introduce: $introduce, status: $status, createWhere: $createWhere, pairId: $pairId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.salt, salt) ||
                const DeepCollectionEquality().equals(other.salt, salt)) &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)) &&
            (identical(other.headPortrait, headPortrait) ||
                const DeepCollectionEquality()
                    .equals(other.headPortrait, headPortrait)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.introduce, introduce) ||
                const DeepCollectionEquality()
                    .equals(other.introduce, introduce)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createWhere, createWhere) ||
                const DeepCollectionEquality()
                    .equals(other.createWhere, createWhere)) &&
            (identical(other.pairId, pairId) ||
                const DeepCollectionEquality().equals(other.pairId, pairId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(salt) ^
      const DeepCollectionEquality().hash(nickName) ^
      const DeepCollectionEquality().hash(headPortrait) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(introduce) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createWhere) ^
      const DeepCollectionEquality().hash(pairId);

  @JsonKey(ignore: true)
  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserEntityToJson(this);
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      int id,
      String username,
      String password,
      String? salt,
      String? nickName,
      String? headPortrait,
      String? phone,
      String? email,
      int? sex,
      String? introduce,
      int status,
      int? createWhere,
      String? pairId) = _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String? get salt => throw _privateConstructorUsedError;
  @override
  String? get nickName => throw _privateConstructorUsedError;
  @override
  String? get headPortrait => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  int? get sex => throw _privateConstructorUsedError;
  @override
  String? get introduce => throw _privateConstructorUsedError;
  @override
  int get status => throw _privateConstructorUsedError;
  @override
  int? get createWhere => throw _privateConstructorUsedError;
  @override
  String? get pairId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
