import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';

// FontWeight.w100 (Thin)
// FontWeight.w200 (ExtraLight)
// FontWeight.w300 (Light)
// FontWeight.w400 (Regular / Normal)
// FontWeight.w500 (Medium)
// FontWeight.w600 (SemiBold)
// FontWeight.w700 (Bold)
// FontWeight.w800 (ExtraBold)
// FontWeight.w900 (Black)
class AppStyle {
  AppStyle._();

  static const textHeader = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );
  static const textDescription = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const textTitle = TextStyle(
      fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColor.whiteColor);
  static TextStyle textContent = TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w400, color: AppColor.grey300);
}
