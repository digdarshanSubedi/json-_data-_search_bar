// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return ApiResponse(
      version: json['version'] as String,
      statusCode: json['statusCode'] as int,
      result: json['result'],
      errorMessage: json['errorMessage'] as String);
}

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'version': instance.version,
      'statusCode': instance.statusCode,
      'result': instance.result,
      'errorMessage': instance.errorMessage
    };
