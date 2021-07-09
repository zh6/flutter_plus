// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TabEntityTearOff {
  const _$TabEntityTearOff();

  _TabEntity call(Widget widget, String title, IconData icon) {
    return _TabEntity(
      widget,
      title,
      icon,
    );
  }
}

/// @nodoc
const $TabEntity = _$TabEntityTearOff();

/// @nodoc
mixin _$TabEntity {
  Widget get widget => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TabEntityCopyWith<TabEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabEntityCopyWith<$Res> {
  factory $TabEntityCopyWith(TabEntity value, $Res Function(TabEntity) then) =
      _$TabEntityCopyWithImpl<$Res>;
  $Res call({Widget widget, String title, IconData icon});
}

/// @nodoc
class _$TabEntityCopyWithImpl<$Res> implements $TabEntityCopyWith<$Res> {
  _$TabEntityCopyWithImpl(this._value, this._then);

  final TabEntity _value;
  // ignore: unused_field
  final $Res Function(TabEntity) _then;

  @override
  $Res call({
    Object? widget = freezed,
    Object? title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      widget: widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
abstract class _$TabEntityCopyWith<$Res> implements $TabEntityCopyWith<$Res> {
  factory _$TabEntityCopyWith(
          _TabEntity value, $Res Function(_TabEntity) then) =
      __$TabEntityCopyWithImpl<$Res>;
  @override
  $Res call({Widget widget, String title, IconData icon});
}

/// @nodoc
class __$TabEntityCopyWithImpl<$Res> extends _$TabEntityCopyWithImpl<$Res>
    implements _$TabEntityCopyWith<$Res> {
  __$TabEntityCopyWithImpl(_TabEntity _value, $Res Function(_TabEntity) _then)
      : super(_value, (v) => _then(v as _TabEntity));

  @override
  _TabEntity get _value => super._value as _TabEntity;

  @override
  $Res call({
    Object? widget = freezed,
    Object? title = freezed,
    Object? icon = freezed,
  }) {
    return _then(_TabEntity(
      widget == freezed
          ? _value.widget
          : widget // ignore: cast_nullable_to_non_nullable
              as Widget,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
class _$_TabEntity implements _TabEntity {
  const _$_TabEntity(this.widget, this.title, this.icon);

  @override
  final Widget widget;
  @override
  final String title;
  @override
  final IconData icon;

  @override
  String toString() {
    return 'TabEntity(widget: $widget, title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabEntity &&
            (identical(other.widget, widget) ||
                const DeepCollectionEquality().equals(other.widget, widget)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(widget) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$TabEntityCopyWith<_TabEntity> get copyWith =>
      __$TabEntityCopyWithImpl<_TabEntity>(this, _$identity);
}

abstract class _TabEntity implements TabEntity {
  const factory _TabEntity(Widget widget, String title, IconData icon) =
      _$_TabEntity;

  @override
  Widget get widget => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  IconData get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TabEntityCopyWith<_TabEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
