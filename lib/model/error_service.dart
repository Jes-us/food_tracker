// To parse this JSON data, do
//
//     final errorServiceModel = errorServiceModelFromJson(jsonString);

import 'dart:convert';

ErrorServiceModel errorServiceModelFromJson(String str) =>
    ErrorServiceModel.fromJson(json.decode(str));

String errorServiceModelToJson(ErrorServiceModel data) =>
    json.encode(data.toJson());

class ErrorServiceModel {
  String? code;
  String? message;

  ErrorServiceModel({
    this.code,
    this.message,
  });

  factory ErrorServiceModel.fromJson(Map<String, dynamic> json) =>
      ErrorServiceModel(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
