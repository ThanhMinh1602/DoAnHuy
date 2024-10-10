import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/container_custom_paint.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PowerLowestNetworkFeesWidget extends StatelessWidget {
  const PowerLowestNetworkFeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final PageController pageController = PageController();
    return Column(
      children: [
        spaceH46,
        SvgPicture.asset(Assets.images.polygon),
        spaceH12,
        GradientText(
          text: "The Power of\nLowest Network Fees",
          style: AppStyle.textHeader,
          gradient: AppColor.gradientc_310D0c_31D0D0,
        ),
        spaceH24,
        Stack(
          children: [
            const Positioned.fill(child: CircleGradientBlur()),
            _buildCarouselSlider(),
          ],
        )
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: 5,
      itemBuilder: (context, index, realIndex) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              width: 1.0,
              gradient: LinearGradient(colors: [
                AppColor.c_31D0D0.withOpacity(0.2),
                AppColor.c_DC349E.withOpacity(0.2)
              ]),
            ),
            borderRadius: BorderRadius.circular(16.0),
            gradient: LinearGradient(
              colors: [
                AppColor.c_31D0D0.withOpacity(0.1),
                AppColor.c_DC349E.withOpacity(0.1)
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 280,
        initialPage: 1,
        viewportFraction: 0.6,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: false,
      ),
    );
  }
}
