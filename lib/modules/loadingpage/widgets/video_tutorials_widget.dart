import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class VideoTutorialsWidget extends StatelessWidget {
  const VideoTutorialsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 48.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ignore: prefer_const_constructors
          Positioned(bottom: 0, child: const CircleGradientBlur()),
          Column(
            children: [
              const GradientText(
                text: "Galaxy\nVideo Tutorials",
                style: AppStyle.textHeader,
                gradient: AppColor.gradientc_310D0c_31D0D0,
              ),
              spaceH24,
              Image.asset(
                Assets.images.videoPlayer.path,
                width: screenWidth,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
