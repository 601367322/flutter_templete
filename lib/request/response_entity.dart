import 'dart:convert';

import 'package:english/request/response_entity.g.dart';

class ResponseEntity<T> {
  T? data;
  int? status;
  String? msg;
  int? code;
  String? message;

  ResponseEntity();

  factory ResponseEntity.fromJson(Map<String, dynamic> json) =>
      $ResponseEntityFromJson(json);

  Map<String, dynamic> toJson() => $ResponseEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
