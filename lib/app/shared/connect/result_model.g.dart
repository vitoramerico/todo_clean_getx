// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return ResultModel(
    json['success'] as bool,
    json['errors'],
    json['data'],
  );
}

Map<String, dynamic> _$ResultModelToJson(ResultModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
      'data': instance.data,
    };
