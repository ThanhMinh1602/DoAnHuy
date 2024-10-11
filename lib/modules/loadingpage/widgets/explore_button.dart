import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class ExploreButton extends StatelessWidget {
  final String? title;
  final Function? onTap;

  const ExploreButton({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      btnTxt: title ?? 'EXPLORE',
      width: title != null ? 128 : 153,
      icon: Assets.icons.arrowRightFill.path,
      gradient: AppColor.buildGradient(),
      onTap: onTap,
    );
  }
}
