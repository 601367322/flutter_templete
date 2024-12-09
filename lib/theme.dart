import 'package:flutter/material.dart';

import 'common/m_colors.dart';
import 'common/m_size.dart';


var light = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: MColors.primaryColor,
    secondary: MColors.secondTitle,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    toolbarHeight: MSize.toolbarHeight,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    )
  )
);

var dark = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    toolbarHeight: MSize.toolbarHeight,
  ),
  colorScheme: const ColorScheme.dark(
    primary: MColors.primaryColor,
    secondary: MColors.secondTitleDark,
  ),
  dividerTheme: DividerThemeData(
    color: Colors.white.withOpacity(0.2),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all<Color>(
        Colors.white, //字体颜色
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(
        const TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  ),
  sliderTheme: const SliderThemeData(
    valueIndicatorTextStyle: TextStyle(
      color: Colors.white,
    ),
  ),
);
