// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) => BaseModel(
      status: json['status'] as int?,
      responseMessage: json['responseMessage'] as String?,
      requestId: json['requestId'] as String?,
    );

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'status': instance.status,
      'responseMessage': instance.responseMessage,
      'requestId': instance.requestId,
    };
