import 'package:json_annotation/json_annotation.dart';

part 'result_model.g.dart';

@JsonSerializable()
class ResultModel {
  final bool success;
  final dynamic errors;
  final dynamic data;

  String get errorText => errors?.map((v) => v['message'])?.toList()?.join(', ');

  ResultModel(
    this.success,
    this.errors,
    this.data,
  );

  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResultModelToJson(this);
}
