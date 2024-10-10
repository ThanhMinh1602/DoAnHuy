import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PageNavigationButton extends StatelessWidget {
  final void Function()? onTap;
  final bool? isRight;

  const PageNavigationButton({
    super.key,
    this.onTap,
    this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: isRight ?? false,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 30.0,
          height: 68.0,
          padding: const EdgeInsets.symmetric(vertical: 24.0)
              .copyWith(left: 3, right: 7),
          decoration: BoxDecoration(
            border: const GradientBoxBorder(
                gradient: LinearGradient(
                    colors: [AppColor.c_31D0D0, AppColor.c_DC349E])),
            borderRadius:
                const BorderRadius.horizontal(right: Radius.circular(16.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.whiteColor.withOpacity(0.06),
                AppColor.whiteColor.withOpacity(0.03),
              ],
            ),
          ),
          child: SvgPicture.asset(Assets.images.previousPageIcon),
        ),
      ),
    );
  }
}
