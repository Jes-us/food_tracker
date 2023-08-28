// To parse this JSON data, do
//
//     final errorServiceModel = errorServiceModelFromJson(jsonString);

import 'dart:convert';

errorServiceModel errorServiceModelFromJson(String str) =>
    errorServiceModel.fromJson(json.decode(str));

String errorServiceModelToJson(errorServiceModel data) =>
    json.encode(data.toJson());

class errorServiceModel {
  String? code;
  String? message;

  errorServiceModel({
    this.code,
    this.message,
  });

  factory errorServiceModel.fromJson(Map<String, dynamic> json) =>
      errorServiceModel(
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };
}
