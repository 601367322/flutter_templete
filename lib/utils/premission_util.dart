import 'package:english/utils/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import '../generated/l10n.dart';
import '../widget/text.dart';
import 'dialog_util.dart';

class PermissionUtil {
  static Future<bool> requestPermission() async {
    return requestMulitPermission([
      Permission.camera,
      Permission.microphone,
      Permission.bluetoothConnect,
      Permission.notification,
    ]);
  }

  static Future<bool> requestOnlyCameraPermission() async {
    return requestMulitPermission([
      Permission.camera,
    ]);
  }

  static Future<bool> requestMulitPermission(List<Permission> permissions) async {
    var result = await permissions.request();
    for (var permission in permissions) {
      if (result[permission] != PermissionStatus.granted) {
        if (permission == Permission.camera) {
          showPermissionDialog(S.current.camera);
          return false;
        }
        if (permission == Permission.microphone) {
          showPermissionDialog(S.current.microphone);
          return false;
        }
      }
    }
    return true;
  }

  static Future<void> showPermissionDialog(String permissionName) async {
    if (Get.context != null) {
      await DialogUtil.showCustomDialog(
          context: Get.context!,
          child: MyText(
            '$permissionName${S.current.openPermissionTip}',
            fontSize: 18,
          ),
          title: MyText(S.current.tip),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: MyText(S.current.cancel)),
            FilledButton(
                onPressed: () {
                  openAppSettings();
                  Get.back();
                },
                child: MyText(S.current.openPermission))
          ]);
      Get.back();
    }
    Get.back();
  }

  static Future<bool> requestCameraWithTip() async {
    // 检查是否已经显示过扫码权限说明
    bool hasShownScanPermissionDialog = SpUtil.hasShownScanPermissionDialog.val;
    
    if (!hasShownScanPermissionDialog) {
      // 显示权限说明弹框
      bool? shouldContinue = await DialogUtil.showCustomDialog(
        context: Get.context!,
        title: MyText(S.current.permissionRequestTitle),
        child: MyText(
          S.current.scanPermissionRequestContent,  // 需要在语言文件中添加新的文案
          fontSize: 16,
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: MyText(S.current.cancel),
          ),
          FilledButton(
            onPressed: () => Get.back(result: true),
            child: MyText(S.current.confirm),
          ),
        ],
      );

      if (shouldContinue != true) {
        return false;
      }

      // 保存已显示权限说明的标记
      SpUtil.hasShownScanPermissionDialog.val = true;
    }

    return await requestOnlyCameraPermission();
  }
}
