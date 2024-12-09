import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MColors {
  static MaterialColor primarySwatch() {
    Color color = primaryColor;
    List strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }

  static const SystemUiOverlayStyle systemOverlayStyle =
      SystemUiOverlayStyle.dark;

  static const Color appbarColor = Colors.white;

  static const Color defaultBackgroundColor = Color(0xffffffff);
  static const Color defaultBackgroundColorLight = Color.fromRGBO(245,245,245,1);

  static const Color title = Colors.black;

  static const Color normalTextColor = Color(0xffffffff);

  static const Color primaryColor = Color(0xff567ec6);

  static const Color searchBarBackgroundColor =
      Color.fromRGBO(241, 241, 241, 1);

  static const Color searchHintTextColor = Color.fromRGBO(187, 187, 189, 1);

  static const Color tabBarUnSelectTextColor = Color.fromRGBO(102, 102, 102, 1);

  static const Color worksCardBackgroundColor = Colors.white;

  static const Color worksCardPositionBackgroundColor =
      Color.fromRGBO(23, 25, 23, 0.3);

  static const Color textFieldHintTextColor = Color.fromRGBO(201, 201, 201, 1);

  static const Color textFieldUnderlineBorderColor =
      Color.fromRGBO(229, 229, 229, 1);

  static const Color textButtonFrontColor = Color.fromRGBO(149, 149, 149, 1);

  static const Color loginBottomTextColor = Color.fromRGBO(183, 183, 183, 1);

  static const Color checkBoxUnCheckBorderColor =
      Color.fromRGBO(172, 172, 172, 1);

  static const Color unChoosePanelColor = Color.fromRGBO(245, 245, 245, 1);

  static const Color arrowColor = Color.fromRGBO(153, 153, 153, 1);

  static const Color dividerColor = Color.fromRGBO(240, 240, 240, 1);

  static const Color boxBorderColor = Color.fromRGBO(226, 226, 226, 1);

  static const Color secondTitle = Color.fromRGBO(112, 112, 112, 1);

  static const Color secondTitleDark = Color.fromRGBO(255, 255, 255, 0.8);

  static const Color bottomSheetNormalTitleColor =
  Color.fromRGBO(25, 29, 30, 1);

  static const Color greyTextColor = Color.fromRGBO(161, 161, 161, 1);

  static const Color greyTextColor_157 = Color.fromRGBO(157, 157, 157, 1);
  static const Color greyTextColor_147 = Color.fromRGBO(147, 147, 147, 1);
  static const Color greyTextColor_158 = Color.fromRGBO(158, 158, 158, 1);

  static const Color greyTextColor_191 = Color.fromRGBO(191, 191, 191, 1);

  static const Color greyTextColor_102 = Color.fromRGBO(102, 102, 102, 1);

  static const Color greyTextColor_169 = Color.fromRGBO(169, 169, 169, 1);
  static const Color greyTextColor_173 = Color.fromRGBO(173, 173, 173, 1);
  static const Color greyTextColor_206 = Color.fromRGBO(206, 206, 206, 1);
  static const Color greyTextColor_62 = Color.fromRGBO(62, 62, 62, 1);
  static const Color greyBackgroundColor_248 = Color.fromRGBO(248, 248, 248, 1);

  static const Color priceColor = Color.fromRGBO(255, 42, 0, 1);
  static const Color oldPriceColor = Color.fromRGBO(194, 194, 194, 1);
}
