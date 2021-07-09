// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MomentResponse _$_$_MomentResponseFromJson(Map<String, dynamic> json) {
  return _$_MomentResponse(
    json['state'] as int,
    json['msg'] as String,
    aaData: (json['aaData'] as List<dynamic>?)
        ?.map((e) => MomentEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MomentResponseToJson(_$_MomentResponse instance) =>
    <String, dynamic>{
      'state': instance.state,
      'msg': instance.msg,
      'aaData': instance.aaData,
    };
