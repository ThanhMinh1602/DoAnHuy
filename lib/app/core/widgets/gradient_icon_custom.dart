import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';

class GradientIconCustom extends StatelessWidget {
  final String iconPath;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  const GradientIconCustom({
    super.key,
    required this.iconPath,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width ?? 52.0,
        height: height ?? 52.0,
        padding: padding ?? const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            gradient: AppColor.gradientc_310D0c_31D0D0,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 24.0,
                  spreadRadius: 0,
                  color: AppColor.c_DC349E.withOpacity(0.5))
            ],
            borderRadius: BorderRadius.circular(100.0)),
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
