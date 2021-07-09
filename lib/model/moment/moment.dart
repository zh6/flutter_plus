import 'package:freezed_annotation/freezed_annotation.dart';

part 'moment.freezed.dart';
part 'moment.g.dart';

@freezed
class MomentEntity with _$MomentEntity {
  const factory MomentEntity(
    String id,
    String type,
    String content,
    String? createUserId,
    String? createUserName,
    String? updateUserId,
    String? updateUserName,
  ) = _MomentEntity;

  factory MomentEntity.fromJson(Map<String, dynamic> json) => _$MomentEntityFromJson(json);
}
