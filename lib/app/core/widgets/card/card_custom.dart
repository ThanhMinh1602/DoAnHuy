import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final String? image;
  final EdgeInsetsGeometry? margin;

  const CardCustom({
    super.key,
    required this.title,
    required this.content,
    this.titleStyle,
    this.contentStyle,
    this.image,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          width: 1.0,
          gradient: AppColor.buildGradient(opacity: 0.2),
        ),
        borderRadius: BorderRadius.circular(16.0),
        gradient: AppColor.buildGradient(opacity: 0.1),
      ),
      child: Column(
        crossAxisAlignment: image != null && image!.isNotEmpty
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          // Kiểm tra nếu có hình ảnh hợp lệ
          if (image != null && image!.isNotEmpty)
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3.0),
                child: Image.asset(
                  image!,
                  width: 68.8,
                  height: 48.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (image != null && image!.isNotEmpty) spaceH12,
          Align(
            alignment: (image != null && image!.isNotEmpty)
                ? Alignment.centerLeft
                : Alignment.center,
            child: Text(
              title,
              style: titleStyle ?? AppStyle.textTitle,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            content,
            textAlign: image != null && image!.isNotEmpty
                ? TextAlign.start
                : TextAlign.center,
            style: contentStyle ?? AppStyle.textContent,
          ),
        ],
      ),
    );
  }
}
