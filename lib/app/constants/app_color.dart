// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const backgroundColor = Color(0xFF09090C);
  static const primaryColor = Color(0xFF03ACF2);
  static const appBarColor = Color(0xFF141414);
  static const primaryLight = Color(0xFFB3F5FC);
  static const primaryDark = Color(0xFF03ACF2);
  static const secondaryColor = Color(0xFF03ACF2);
  static const secondaryLight = Color(0xFFB3F5FC);
  static const secondaryDark = Color(0xFF03ACF2);
  static const accentColor = Color(0xFF03ACF2);
  static const accentLight = Color(0xFFB3F5FC);
  static const accentDark = Color(0xFF03ACF2);
  static const errorColor = Color(0xFFE53935);
  static const whiteColor = Color(0xffffffff);
  static const blue700 = Color(0xff1976D2);
  static var green500 = Colors.green[500];
  static var grey200 = Colors.grey[200];

  static var grey300 = Colors.grey[300];
  static var grey500 = Colors.grey[500];

  static const c_DC349E = Color(0xFFDC349E);
  static const c_31D0D0 = Color(0xFF31D0D0);
  static const c_111D1B = Color(0xFF111D1B);
  static const c_09090C = Color(0xFF09090C);

  static LinearGradient buildGradient(
      {double? opacity,
      AlignmentGeometry? begin,
      AlignmentGeometry? end,
      List<Color>? colors}) {
    return LinearGradient(
      begin: begin ?? Alignment.centerLeft,
      end: end ?? Alignment.centerRight,
      colors: colors ??
          [
            AppColor.c_31D0D0.withOpacity(opacity ?? 1),
            AppColor.c_DC349E.withOpacity(opacity ?? 1)
          ],
    );
  }
}
