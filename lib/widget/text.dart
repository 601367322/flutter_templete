import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final double? fontSize;

  final FontWeight? fontWeight;

  final Color? color;

  final String data;

  final double? height;

  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  final TextDecoration? decoration;

  const MyText(
    this.data, {
    super.key,
    this.fontSize,
    this.height,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.shadows,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        fontWeight: fontWeight,
        shadows: shadows,
        decoration: decoration,
      ),
    );
  }
}
