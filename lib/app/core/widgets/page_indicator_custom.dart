import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorCustom extends StatelessWidget {
  final PageController pageController;
  final int count;
  const PageIndicatorCustom({
    super.key,
    required this.pageController,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: WormEffect(
        dotColor: AppColor.whiteColor.withOpacity(0.2),
        activeDotColor: AppColor.whiteColor,
        dotHeight: 8.0,
        dotWidth: 8.0,
      ),
    );
  }
}
