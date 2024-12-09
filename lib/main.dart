import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:app_links/app_links.dart';
import 'package:english/pages/home.dart';
import 'package:english/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'common/m_colors.dart';
import 'generated/l10n.dart';
import 'request/http_utils.dart';
import 'utils/logutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // //透明状态栏
  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Platform.isAndroid ? Brightness.light : Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  // 竖屏
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // 初始化日志
  await LogUtil.init();
  // 初始化存储
  await GetStorage.init();
  // 初始化HTTP
  await HttpUtils.init();

  runApp(Application());
}

class Application extends StatelessWidget {
  final AppLinks _appLinks = AppLinks();
  late final StreamSubscription<Uri>? _linkSubscription;

  Application({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: GetMaterialApp(
        title: '智媒XLive',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.cupertino,
        transitionDuration: const Duration(milliseconds: 200),
        onInit: () {
          _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
          });
        },
        onDispose: () {
          _linkSubscription?.cancel();
        },
        popGesture: true,
        localizationsDelegates: const [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate, S.delegate],
        supportedLocales: S.delegate.supportedLocales,
        theme: light,
        darkTheme: dark,
        builder: EasyLoading.init(),
        themeMode: ThemeMode.dark,
        home: const HomePage(),
      ),
    );
  }
}
