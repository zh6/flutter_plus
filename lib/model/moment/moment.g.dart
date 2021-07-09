// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MomentEntity _$_$_MomentEntityFromJson(Map<String, dynamic> json) {
  return _$_MomentEntity(
    json['id'] as String,
    json['type'] as String,
    json['content'] as String,
    json['createUserId'] as String?,
    json['createUserName'] as String?,
    json['updateUserId'] as String?,
    json['updateUserName'] as String?,
  );
}

Map<String, dynamic> _$_$_MomentEntityToJson(_$_MomentEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'content': instance.content,
      'createUserId': instance.createUserId,
      'createUserName': instance.createUserName,
      'updateUserId': instance.updateUserId,
      'updateUserName': instance.updateUserName,
    };
