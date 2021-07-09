import 'package:freezed_annotation/freezed_annotation.dart';


part 'home.g.dart';

part 'home.freezed.dart';

@freezed
class GridEntity with _$GridEntity {
  const factory GridEntity(
    String name,
    String imgUrl,
    String path,
  ) = _GridEntity;

  factory GridEntity.fromJson(Map<String, dynamic> json) => _$GridEntityFromJson(json);
}

@freezed
class SwiperEntity with _$SwiperEntity {
  const factory SwiperEntity(
    String name,
    String imgUrl,
    String path,
  ) = _SwiperEntity;

  factory SwiperEntity.fromJson(Map<String, dynamic> json) => _$SwiperEntityFromJson(json);
}
