// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GridEntity _$GridEntityFromJson(Map<String, dynamic> json) {
  return _GridEntity.fromJson(json);
}

/// @nodoc
class _$GridEntityTearOff {
  const _$GridEntityTearOff();

  _GridEntity call(String name, String imgUrl, String path) {
    return _GridEntity(
      name,
      imgUrl,
      path,
    );
  }

  GridEntity fromJson(Map<String, Object> json) {
    return GridEntity.fromJson(json);
  }
}

/// @nodoc
const $GridEntity = _$GridEntityTearOff();

/// @nodoc
mixin _$GridEntity {
  String get name => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GridEntityCopyWith<GridEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GridEntityCopyWith<$Res> {
  factory $GridEntityCopyWith(
          GridEntity value, $Res Function(GridEntity) then) =
      _$GridEntityCopyWithImpl<$Res>;
  $Res call({String name, String imgUrl, String path});
}

/// @nodoc
class _$GridEntityCopyWithImpl<$Res> implements $GridEntityCopyWith<$Res> {
  _$GridEntityCopyWithImpl(this._value, this._then);

  final GridEntity _value;
  // ignore: unused_field
  final $Res Function(GridEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imgUrl = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GridEntityCopyWith<$Res> implements $GridEntityCopyWith<$Res> {
  factory _$GridEntityCopyWith(
          _GridEntity value, $Res Function(_GridEntity) then) =
      __$GridEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String imgUrl, String path});
}

/// @nodoc
class __$GridEntityCopyWithImpl<$Res> extends _$GridEntityCopyWithImpl<$Res>
    implements _$GridEntityCopyWith<$Res> {
  __$GridEntityCopyWithImpl(
      _GridEntity _value, $Res Function(_GridEntity) _then)
      : super(_value, (v) => _then(v as _GridEntity));

  @override
  _GridEntity get _value => super._value as _GridEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? imgUrl = freezed,
    Object? path = freezed,
  }) {
    return _then(_GridEntity(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GridEntity implements _GridEntity {
  const _$_GridEntity(this.name, this.imgUrl, this.path);

  factory _$_GridEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_GridEntityFromJson(json);

  @override
  final String name;
  @override
  final String imgUrl;
  @override
  final String path;

  @override
  String toString() {
    return 'GridEntity(name: $name, imgUrl: $imgUrl, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GridEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$GridEntityCopyWith<_GridEntity> get copyWith =>
      __$GridEntityCopyWithImpl<_GridEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GridEntityToJson(this);
  }
}

abstract class _GridEntity implements GridEntity {
  const factory _GridEntity(String name, String imgUrl, String path) =
      _$_GridEntity;

  factory _GridEntity.fromJson(Map<String, dynamic> json) =
      _$_GridEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GridEntityCopyWith<_GridEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

SwiperEntity _$SwiperEntityFromJson(Map<String, dynamic> json) {
  return _SwiperEntity.fromJson(json);
}

/// @nodoc
class _$SwiperEntityTearOff {
  const _$SwiperEntityTearOff();

  _SwiperEntity call(String name, String imgUrl, String path) {
    return _SwiperEntity(
      name,
      imgUrl,
      path,
    );
  }

  SwiperEntity fromJson(Map<String, Object> json) {
    return SwiperEntity.fromJson(json);
  }
}

/// @nodoc
const $SwiperEntity = _$SwiperEntityTearOff();

/// @nodoc
mixin _$SwiperEntity {
  String get name => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SwiperEntityCopyWith<SwiperEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwiperEntityCopyWith<$Res> {
  factory $SwiperEntityCopyWith(
          SwiperEntity value, $Res Function(SwiperEntity) then) =
      _$SwiperEntityCopyWithImpl<$Res>;
  $Res call({String name, String imgUrl, String path});
}

/// @nodoc
class _$SwiperEntityCopyWithImpl<$Res> implements $SwiperEntityCopyWith<$Res> {
  _$SwiperEntityCopyWithImpl(this._value, this._then);

  final SwiperEntity _value;
  // ignore: unused_field
  final $Res Function(SwiperEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? imgUrl = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SwiperEntityCopyWith<$Res>
    implements $SwiperEntityCopyWith<$Res> {
  factory _$SwiperEntityCopyWith(
          _SwiperEntity value, $Res Function(_SwiperEntity) then) =
      __$SwiperEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String imgUrl, String path});
}

/// @nodoc
class __$SwiperEntityCopyWithImpl<$Res> extends _$SwiperEntityCopyWithImpl<$Res>
    implements _$SwiperEntityCopyWith<$Res> {
  __$SwiperEntityCopyWithImpl(
      _SwiperEntity _value, $Res Function(_SwiperEntity) _then)
      : super(_value, (v) => _then(v as _SwiperEntity));

  @override
  _SwiperEntity get _value => super._value as _SwiperEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? imgUrl = freezed,
    Object? path = freezed,
  }) {
    return _then(_SwiperEntity(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SwiperEntity implements _SwiperEntity {
  const _$_SwiperEntity(this.name, this.imgUrl, this.path);

  factory _$_SwiperEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_SwiperEntityFromJson(json);

  @override
  final String name;
  @override
  final String imgUrl;
  @override
  final String path;

  @override
  String toString() {
    return 'SwiperEntity(name: $name, imgUrl: $imgUrl, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SwiperEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imgUrl, imgUrl) ||
                const DeepCollectionEquality().equals(other.imgUrl, imgUrl)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imgUrl) ^
      const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  _$SwiperEntityCopyWith<_SwiperEntity> get copyWith =>
      __$SwiperEntityCopyWithImpl<_SwiperEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SwiperEntityToJson(this);
  }
}

abstract class _SwiperEntity implements SwiperEntity {
  const factory _SwiperEntity(String name, String imgUrl, String path) =
      _$_SwiperEntity;

  factory _SwiperEntity.fromJson(Map<String, dynamic> json) =
      _$_SwiperEntity.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get imgUrl => throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SwiperEntityCopyWith<_SwiperEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
