// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'moment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MomentEntity _$MomentEntityFromJson(Map<String, dynamic> json) {
  return _MomentEntity.fromJson(json);
}

/// @nodoc
class _$MomentEntityTearOff {
  const _$MomentEntityTearOff();

  _MomentEntity call(
      String id,
      String type,
      String content,
      String? createUserId,
      String? createUserName,
      String? updateUserId,
      String? updateUserName) {
    return _MomentEntity(
      id,
      type,
      content,
      createUserId,
      createUserName,
      updateUserId,
      updateUserName,
    );
  }

  MomentEntity fromJson(Map<String, Object> json) {
    return MomentEntity.fromJson(json);
  }
}

/// @nodoc
const $MomentEntity = _$MomentEntityTearOff();

/// @nodoc
mixin _$MomentEntity {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get createUserId => throw _privateConstructorUsedError;
  String? get createUserName => throw _privateConstructorUsedError;
  String? get updateUserId => throw _privateConstructorUsedError;
  String? get updateUserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MomentEntityCopyWith<MomentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentEntityCopyWith<$Res> {
  factory $MomentEntityCopyWith(
          MomentEntity value, $Res Function(MomentEntity) then) =
      _$MomentEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String type,
      String content,
      String? createUserId,
      String? createUserName,
      String? updateUserId,
      String? updateUserName});
}

/// @nodoc
class _$MomentEntityCopyWithImpl<$Res> implements $MomentEntityCopyWith<$Res> {
  _$MomentEntityCopyWithImpl(this._value, this._then);

  final MomentEntity _value;
  // ignore: unused_field
  final $Res Function(MomentEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? createUserId = freezed,
    Object? createUserName = freezed,
    Object? updateUserId = freezed,
    Object? updateUserName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createUserId: createUserId == freezed
          ? _value.createUserId
          : createUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName: createUserName == freezed
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateUserId: updateUserId == freezed
          ? _value.updateUserId
          : updateUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      updateUserName: updateUserName == freezed
          ? _value.updateUserName
          : updateUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MomentEntityCopyWith<$Res>
    implements $MomentEntityCopyWith<$Res> {
  factory _$MomentEntityCopyWith(
          _MomentEntity value, $Res Function(_MomentEntity) then) =
      __$MomentEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String type,
      String content,
      String? createUserId,
      String? createUserName,
      String? updateUserId,
      String? updateUserName});
}

/// @nodoc
class __$MomentEntityCopyWithImpl<$Res> extends _$MomentEntityCopyWithImpl<$Res>
    implements _$MomentEntityCopyWith<$Res> {
  __$MomentEntityCopyWithImpl(
      _MomentEntity _value, $Res Function(_MomentEntity) _then)
      : super(_value, (v) => _then(v as _MomentEntity));

  @override
  _MomentEntity get _value => super._value as _MomentEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? createUserId = freezed,
    Object? createUserName = freezed,
    Object? updateUserId = freezed,
    Object? updateUserName = freezed,
  }) {
    return _then(_MomentEntity(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createUserId == freezed
          ? _value.createUserId
          : createUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName == freezed
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateUserId == freezed
          ? _value.updateUserId
          : updateUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      updateUserName == freezed
          ? _value.updateUserName
          : updateUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MomentEntity implements _MomentEntity {
  const _$_MomentEntity(this.id, this.type, this.content, this.createUserId,
      this.createUserName, this.updateUserId, this.updateUserName);

  factory _$_MomentEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_MomentEntityFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String content;
  @override
  final String? createUserId;
  @override
  final String? createUserName;
  @override
  final String? updateUserId;
  @override
  final String? updateUserName;

  @override
  String toString() {
    return 'MomentEntity(id: $id, type: $type, content: $content, createUserId: $createUserId, createUserName: $createUserName, updateUserId: $updateUserId, updateUserName: $updateUserName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MomentEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.createUserId, createUserId) ||
                const DeepCollectionEquality()
                    .equals(other.createUserId, createUserId)) &&
            (identical(other.createUserName, createUserName) ||
                const DeepCollectionEquality()
                    .equals(other.createUserName, createUserName)) &&
            (identical(other.updateUserId, updateUserId) ||
                const DeepCollectionEquality()
                    .equals(other.updateUserId, updateUserId)) &&
            (identical(other.updateUserName, updateUserName) ||
                const DeepCollectionEquality()
                    .equals(other.updateUserName, updateUserName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(createUserId) ^
      const DeepCollectionEquality().hash(createUserName) ^
      const DeepCollectionEquality().hash(updateUserId) ^
      const DeepCollectionEquality().hash(updateUserName);

  @JsonKey(ignore: true)
  @override
  _$MomentEntityCopyWith<_MomentEntity> get copyWith =>
      __$MomentEntityCopyWithImpl<_MomentEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MomentEntityToJson(this);
  }
}

abstract class _MomentEntity implements MomentEntity {
  const factory _MomentEntity(
      String id,
      String type,
      String content,
      String? createUserId,
      String? createUserName,
      String? updateUserId,
      String? updateUserName) = _$_MomentEntity;

  factory _MomentEntity.fromJson(Map<String, dynamic> json) =
      _$_MomentEntity.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String? get createUserId => throw _privateConstructorUsedError;
  @override
  String? get createUserName => throw _privateConstructorUsedError;
  @override
  String? get updateUserId => throw _privateConstructorUsedError;
  @override
  String? get updateUserName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MomentEntityCopyWith<_MomentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
