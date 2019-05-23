import 'package:json_annotation/json_annotation.dart';
part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  String version;
  int statusCode;
  dynamic result;
  String errorMessage;

  ApiResponse({
    this.version,
    this.statusCode,
    this.result,
    this.errorMessage,
  });
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
