

import 'package:english/request/response_entity.dart';

import '../generated/json/base/json_convert_content.dart';

ResponseEntity<T> $ResponseEntityFromJson<T>(Map<String, dynamic> json) {
  final ResponseEntity<T> responseEntity = ResponseEntity();
  final T? body = JsonConvert.fromJsonAsT<T>(json['data']);
  if (body != null) {
    responseEntity.data = body;
  }
  final int? code = jsonConvert.convert<int>(json['status']);
  if (code != null) {
    responseEntity.status = code;
  }
  final String? message = jsonConvert.convert<String>(json['msg']);
  if (message != null) {
    responseEntity.msg = message;
  }
  final int? code1 = jsonConvert.convert<int>(json['code']);
  if (code1 != null) {
    responseEntity.code = code1;
  }
  final String? message1= jsonConvert.convert<String>(json['message']);
  if (message1 != null) {
    responseEntity.message = message1;
  }
  return responseEntity;
}

Map<String, dynamic> $ResponseEntityToJson(ResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['data'] = entity.data?.toJson();
  data['status'] = entity.status;
  data['msg'] = entity.msg;
  data['code'] = entity.code;
  data['message'] = entity.message;
  return data;
}

