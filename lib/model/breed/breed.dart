import 'package:freezed_annotation/freezed_annotation.dart';
part 'breed.freezed.dart';
part 'breed.g.dart';
@freezed
class BreedEntity with _$BreedEntity {
  const factory BreedEntity(
      int id,
      String name,
      String picture,
      String content,
      ) = _BreedEntity;
  factory BreedEntity.fromJson(Map<String, dynamic> json) =>
      _$BreedEntityFromJson(json);
}