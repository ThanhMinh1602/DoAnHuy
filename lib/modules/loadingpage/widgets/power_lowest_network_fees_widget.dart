import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/gradient_icon_custom.dart';
import 'package:galaxy_web3/app/core/widgets/page_indicator_custom.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/app/models/power_lowest_network_fees_model.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

// ignore: must_be_immutable
class PowerLowestNetworkFeesWidget extends StatefulWidget {
  const PowerLowestNetworkFeesWidget({super.key});

  @override
  State<PowerLowestNetworkFeesWidget> createState() =>
      _PowerLowestNetworkFeesWidgetState();
}

class _PowerLowestNetworkFeesWidgetState
    extends State<PowerLowestNetworkFeesWidget> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH46,
        SvgPicture.asset(Assets.images.polygon),
        spaceH12,
        const GradientText(
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
        ),
        spaceH24,
        PageIndicatorCustom(
            pageController: PageController(initialPage: pageIndex),
            count: powerLowestNetworkFees.length),
        spaceH24,
        CustomButton(
          btnTxt: 'Explore'.toUpperCase(),
          width: 153,
          icon: Assets.icons.arrowRightFill.path,
          gradient: AppColor.gradientc_310D0c_31D0D0,
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: powerLowestNetworkFees.length,
      itemBuilder: (context, index, realIndex) {
        final data = powerLowestNetworkFees[index];
        return _buildCarouselItem(
          iconPath: data.imagePath,
          title: data.title,
          content: data.content,
        );
      },
      options: CarouselOptions(
        height: 300,
        initialPage: 0,
        viewportFraction: 0.6,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: false,
        onPageChanged: (index, reason) {
          pageIndex = index;
          setState(() {});
        },
      ),
    );
  }

  Stack _buildCarouselItem(
      {required String title,
      required String content,
      required String iconPath}) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
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
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppStyle.textTitle,
              ),
              const SizedBox(height: 8.0),
              Text(
                content,
                textAlign: TextAlign.center,
                style: AppStyle.textContent,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: GradientIconCustom(
            iconPath: iconPath,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            height: 40.0,
            width: 56.0,
          ),
        )
      ],
    );
  }
}
