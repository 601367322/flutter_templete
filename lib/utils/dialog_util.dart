import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme.dart';
import '../widget/text.dart';


class DialogUtil {
  static Future showCustomDialog({
    required BuildContext context,
    required Widget child,
    bool barrierDismissible = true,
    bool disableBackButton = false,
    Widget? title,
    List<Widget>? actions,
  }) async {
    return await showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) {
          return PopScope(
            canPop: !disableBackButton,
            child: Theme(
              data: light,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AlertDialog(
                    // backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    content: child,
                    title: title,
                    actions: actions,
                  ),
                ],
              ),
            ),
          );
        });
  }

  static Future<dynamic> showCustomSimpleDialog({
    required BuildContext context,
    bool barrierDismissible = true,
    Widget? title,
    bool disableBackButton = false,
    required List<String> items,
  }) {
    return showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) {
          return PopScope(
            canPop: !disableBackButton,
            child: Theme(
              data: light,
              child: SimpleDialog(
                title: title,
                children: [
                  ...items.map(
                    (str) => SimpleDialogOption(
                      child: SizedBox(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: MyText(str)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Get.back(result: str);
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
