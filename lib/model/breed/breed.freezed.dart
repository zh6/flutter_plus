// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BreedEntity _$BreedEntityFromJson(Map<String, dynamic> json) {
  return _BreedEntity.fromJson(json);
}

/// @nodoc
class _$BreedEntityTearOff {
  const _$BreedEntityTearOff();

  _BreedEntity call(int id, String name, String picture, String content) {
    return _BreedEntity(
      id,
      name,
      picture,
      content,
    );
  }

  BreedEntity fromJson(Map<String, Object> json) {
    return BreedEntity.fromJson(json);
  }
}

/// @nodoc
const $BreedEntity = _$BreedEntityTearOff();

/// @nodoc
mixin _$BreedEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreedEntityCopyWith<BreedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedEntityCopyWith<$Res> {
  factory $BreedEntityCopyWith(
          BreedEntity value, $Res Function(BreedEntity) then) =
      _$BreedEntityCopyWithImpl<$Res>;
  $Res call({int id, String name, String picture, String content});
}

/// @nodoc
class _$BreedEntityCopyWithImpl<$Res> implements $BreedEntityCopyWith<$Res> {
  _$BreedEntityCopyWithImpl(this._value, this._then);

  final BreedEntity _value;
  // ignore: unused_field
  final $Res Function(BreedEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BreedEntityCopyWith<$Res>
    implements $BreedEntityCopyWith<$Res> {
  factory _$BreedEntityCopyWith(
          _BreedEntity value, $Res Function(_BreedEntity) then) =
      __$BreedEntityCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String picture, String content});
}

/// @nodoc
class __$BreedEntityCopyWithImpl<$Res> extends _$BreedEntityCopyWithImpl<$Res>
    implements _$BreedEntityCopyWith<$Res> {
  __$BreedEntityCopyWithImpl(
      _BreedEntity _value, $Res Function(_BreedEntity) _then)
      : super(_value, (v) => _then(v as _BreedEntity));

  @override
  _BreedEntity get _value => super._value as _BreedEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? content = freezed,
  }) {
    return _then(_BreedEntity(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BreedEntity implements _BreedEntity {
  const _$_BreedEntity(this.id, this.name, this.picture, this.content);

  factory _$_BreedEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_BreedEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String content;

  @override
  String toString() {
    return 'BreedEntity(id: $id, name: $name, picture: $picture, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BreedEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$BreedEntityCopyWith<_BreedEntity> get copyWith =>
      __$BreedEntityCopyWithImpl<_BreedEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BreedEntityToJson(this);
  }
}

abstract class _BreedEntity implements BreedEntity {
  const factory _BreedEntity(
      int id, String name, String picture, String content) = _$_BreedEntity;

  factory _BreedEntity.fromJson(Map<String, dynamic> json) =
      _$_BreedEntity.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get picture => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BreedEntityCopyWith<_BreedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
