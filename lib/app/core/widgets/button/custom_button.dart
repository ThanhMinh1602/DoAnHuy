import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/utils/dimensions.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomButton extends StatelessWidget {
  final Function? onTap;
  final String? btnTxt;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final bool transparent;
  final EdgeInsets? margin;
  final Gradient? gradient;

  final Gradient? borderGradient;
  final double borderWidth;
  final String? icon;

  const CustomButton({
    super.key,
    this.onTap,
    required this.btnTxt,
    this.backgroundColor,
    this.textStyle,
    this.borderRadius = 10,
    this.width,
    this.transparent = false,
    this.height,
    this.margin,
    this.gradient,
    this.borderGradient,
    this.borderWidth = 2.0,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? Dimensions.webScreenWidth,
        child: Padding(
          padding: margin ?? const EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              border: GradientBoxBorder(
                gradient: borderGradient ??
                    LinearGradient(
                      colors: [
                        AppColor.c_31D0D0.withOpacity(0.3),
                        AppColor.c_DC349E.withOpacity(0.3),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                width: borderWidth,
              ),
              gradient: gradient ??
                  LinearGradient(
                    colors: [
                      AppColor.c_31D0D0.withOpacity(0.1),
                      AppColor.c_DC349E.withOpacity(0.1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            ),
            child: TextButton(
              onPressed: onTap as void Function()?,
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(
                  width ?? Dimensions.webScreenWidth,
                  height ?? 50,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    btnTxt ?? '',
                    style: textStyle ??
                        Theme.of(context).textTheme.displaySmall!.copyWith(
                              color: Colors.white,
                              fontSize: Dimensions.fontSizeLarge,
                            ),
                  ),
                  spaceW2,
                  if (icon != null) ...[
                    Image.asset(
                      icon ?? "",
                      height: 20,
                      width: 20,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
