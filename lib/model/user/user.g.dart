// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$_$_UserEntityFromJson(Map<String, dynamic> json) {
  return _$_UserEntity(
    json['id'] as int,
    json['username'] as String,
    json['password'] as String,
    json['salt'] as String?,
    json['nickName'] as String?,
    json['headPortrait'] as String?,
    json['phone'] as String?,
    json['email'] as String?,
    json['sex'] as int?,
    json['introduce'] as String?,
    json['status'] as int,
    json['createWhere'] as int?,
    json['pairId'] as String?,
  );
}

Map<String, dynamic> _$_$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'nickName': instance.nickName,
      'headPortrait': instance.headPortrait,
      'phone': instance.phone,
      'email': instance.email,
      'sex': instance.sex,
      'introduce': instance.introduce,
      'status': instance.status,
      'createWhere': instance.createWhere,
      'pairId': instance.pairId,
    };
