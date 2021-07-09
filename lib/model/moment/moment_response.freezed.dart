// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'moment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MomentResponse _$MomentResponseFromJson(Map<String, dynamic> json) {
  return _MomentResponse.fromJson(json);
}

/// @nodoc
class _$MomentResponseTearOff {
  const _$MomentResponseTearOff();

  _MomentResponse call(int state, String msg, {List<MomentEntity>? aaData}) {
    return _MomentResponse(
      state,
      msg,
      aaData: aaData,
    );
  }

  MomentResponse fromJson(Map<String, Object> json) {
    return MomentResponse.fromJson(json);
  }
}

/// @nodoc
const $MomentResponse = _$MomentResponseTearOff();

/// @nodoc
mixin _$MomentResponse {
  int get state => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<MomentEntity>? get aaData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MomentResponseCopyWith<MomentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MomentResponseCopyWith<$Res> {
  factory $MomentResponseCopyWith(
          MomentResponse value, $Res Function(MomentResponse) then) =
      _$MomentResponseCopyWithImpl<$Res>;
  $Res call({int state, String msg, List<MomentEntity>? aaData});
}

/// @nodoc
class _$MomentResponseCopyWithImpl<$Res>
    implements $MomentResponseCopyWith<$Res> {
  _$MomentResponseCopyWithImpl(this._value, this._then);

  final MomentResponse _value;
  // ignore: unused_field
  final $Res Function(MomentResponse) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? msg = freezed,
    Object? aaData = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      aaData: aaData == freezed
          ? _value.aaData
          : aaData // ignore: cast_nullable_to_non_nullable
              as List<MomentEntity>?,
    ));
  }
}

/// @nodoc
abstract class _$MomentResponseCopyWith<$Res>
    implements $MomentResponseCopyWith<$Res> {
  factory _$MomentResponseCopyWith(
          _MomentResponse value, $Res Function(_MomentResponse) then) =
      __$MomentResponseCopyWithImpl<$Res>;
  @override
  $Res call({int state, String msg, List<MomentEntity>? aaData});
}

/// @nodoc
class __$MomentResponseCopyWithImpl<$Res>
    extends _$MomentResponseCopyWithImpl<$Res>
    implements _$MomentResponseCopyWith<$Res> {
  __$MomentResponseCopyWithImpl(
      _MomentResponse _value, $Res Function(_MomentResponse) _then)
      : super(_value, (v) => _then(v as _MomentResponse));

  @override
  _MomentResponse get _value => super._value as _MomentResponse;

  @override
  $Res call({
    Object? state = freezed,
    Object? msg = freezed,
    Object? aaData = freezed,
  }) {
    return _then(_MomentResponse(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int,
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      aaData: aaData == freezed
          ? _value.aaData
          : aaData // ignore: cast_nullable_to_non_nullable
              as List<MomentEntity>?,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MomentResponse implements _MomentResponse {
  const _$_MomentResponse(this.state, this.msg, {this.aaData});

  factory _$_MomentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MomentResponseFromJson(json);

  @override
  final int state;
  @override
  final String msg;
  @override
  final List<MomentEntity>? aaData;

  @override
  String toString() {
    return 'MomentResponse(state: $state, msg: $msg, aaData: $aaData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MomentResponse &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.aaData, aaData) ||
                const DeepCollectionEquality().equals(other.aaData, aaData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(aaData);

  @JsonKey(ignore: true)
  @override
  _$MomentResponseCopyWith<_MomentResponse> get copyWith =>
      __$MomentResponseCopyWithImpl<_MomentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MomentResponseToJson(this);
  }
}

abstract class _MomentResponse implements MomentResponse {
  const factory _MomentResponse(int state, String msg,
      {List<MomentEntity>? aaData}) = _$_MomentResponse;

  factory _MomentResponse.fromJson(Map<String, dynamic> json) =
      _$_MomentResponse.fromJson;

  @override
  int get state => throw _privateConstructorUsedError;
  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  List<MomentEntity>? get aaData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MomentResponseCopyWith<_MomentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
