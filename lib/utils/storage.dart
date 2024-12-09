// 本地存储
import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import '../generated/json/base/json_convert_content.dart';

class SpUtil {

  static const String baseUrlVal = "https://xlive.cinctech.com";

  static const String baseUrlValDebug = "https://xlivetest.cinctech.com";

  static var baseUrl = baseUrlVal.val("baseUrl2");

  static var token = "".val("token");

  static var debugAutoUpdate = false.val("debugAutoUpdate");
  static var agreement = false.val('agreement');

  static var hasShownPermissionDialog = false.val("has_shown_permission_dialog");
  static var hasShownScanPermissionDialog = false.val("has_shown_scan_permission_dialog");


  static setJSON(String key, dynamic value) {
    GetStorage().write(key, jsonEncode(value));
  }

  static getJSON(String key) {
    return jsonDecode(GetStorage().read(key));
  }

  static remove(String key){
    GetStorage().remove(key);
  }

  static isDebugMode(){
    return SpUtil.baseUrl.val == SpUtil.baseUrlValDebug;
  }
}
