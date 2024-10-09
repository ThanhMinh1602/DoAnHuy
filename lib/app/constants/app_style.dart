import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

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

  static final textHeader = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );
  static final textDescription = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
}
