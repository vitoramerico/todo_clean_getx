import 'dart:convert';

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

  Map<String, dynamic> toMap() {
    return {
      'success': success,
      'errors': errors,
      'data': data,
    };
  }

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ResultModel(
      map['success'],
      map['errors'],
      map['data'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultModel.fromJson(String source) => ResultModel.fromMap(json.decode(source));
}
