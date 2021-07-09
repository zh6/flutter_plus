import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';

part 'user.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity(
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
    String? pairId,
  ) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}
