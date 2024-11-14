import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle textStyleApp({
    double? fontSize,
    required Color color,
    double? height,
    FontWeight? fontWeight,
    TextDecoration? decoration,
    TextOverflow? overflow,
  }) {
    return TextStyle(
      fontSize: fontSize,
      decoration: decoration,
      color: color,
      fontWeight: fontWeight,
      height: height,
      overflow: overflow,
    );
  }
}
