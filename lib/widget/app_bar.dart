import 'package:english/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../common/m_size.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool showBack;
  final VoidCallback? onBackPressed;

  const MyAppBar({
    super.key,
    required this.title,
    this.showBack = true,
    this.onBackPressed,
    this.actions,
  });

  @override
  State createState() {
    return _AppBarState();
  }

  @override
  Size get preferredSize {
    return Size.fromHeight(MSize.toolbarHeight);
  }
}

class _AppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      leading: widget.showBack
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios),
          // icon: Image.asset("assets/images/icon_return.png"),
              onPressed: () {
                if (widget.onBackPressed != null) {
                  widget.onBackPressed!();
                  return;
                }
                Get.back();
              })
          : Container(),
      title: MyText(widget.title,fontSize: 18,),
      actions: widget.actions,
    );
  }
}
