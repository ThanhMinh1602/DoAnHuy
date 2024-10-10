import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/container_custom_paint.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class InstantProfitsWidget extends StatelessWidget {
  const InstantProfitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: PageView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 46.0),
            child: Stack(
              children: [
                const Positioned(
                  top: 162.87,
                  left: 0,
                  right: 0,
                  child: CircleGradientBlur(),
                ),
                Column(
                  children: [
                    GradientText(
                      text: "Get Instant Profits At",
                      style: AppStyle.textHeader,
                      gradient: AppColor.gradientc_310D0c_31D0D0,
                    ),
                    spaceH12,
                    SvgPicture.asset(Assets.images.metamaskSeeklogo),
                    spaceH24,
                    Image.asset(Assets.images.introduce.path)
                  ],
                ),
                Positioned(
                  bottom: 0,
                    child: ContainerCustomPaint(screenWidth: screenWidth))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
