// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_Hans_CN locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_Hans_CN';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "camera": MessageLookupByLibrary.simpleMessage("相机"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "confirm": MessageLookupByLibrary.simpleMessage("确定"),
        "microphone": MessageLookupByLibrary.simpleMessage("麦克风"),
        "networkError": MessageLookupByLibrary.simpleMessage("网络异常"),
        "openPermission": MessageLookupByLibrary.simpleMessage("打开权限"),
        "openPermissionTip":
            MessageLookupByLibrary.simpleMessage("权限已禁用，请手动打开"),
        "permissionRequestContent": MessageLookupByLibrary.simpleMessage(
            "该功能会获取您的摄像头采集的画面和麦克风采集的声音，用于直播推流，以及通知权限，用于APP后台继续保持推流。请允许APP获取相应权限。"),
        "permissionRequestTitle": MessageLookupByLibrary.simpleMessage("权限申请"),
        "scanPermissionRequestContent": MessageLookupByLibrary.simpleMessage(
            "该功能需要获取您的摄像头权限用于扫描二维码，请允许APP获取相应权限。"),
        "systemError": MessageLookupByLibrary.simpleMessage("系统错误"),
        "tip": MessageLookupByLibrary.simpleMessage("提示")
      };
}
