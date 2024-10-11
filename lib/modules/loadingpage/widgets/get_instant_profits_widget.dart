import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/widgets/card/model/information.dart';
import 'package:galaxy_web3/app/core/widgets/page_indicator_custom.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/page_navigation_button.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/container_custom_paint.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/explore_button.dart';

// ignore: must_be_immutable
class GetInstantProfitsWidget extends StatefulWidget {
  const GetInstantProfitsWidget({super.key});

  @override
  State<GetInstantProfitsWidget> createState() =>
      _GetInstantProfitsWidgetState();
}

class _GetInstantProfitsWidgetState extends State<GetInstantProfitsWidget> {
  late PageController pageController;
  late Timer timer;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentPage < instantProfits.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    timer.cancel();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: PageView.builder(
          controller: pageController,
          itemCount: instantProfits.length,
          itemBuilder: (context, index) {
            return _buildPageWidget(
                screenWidth: screenHeight,
                imagePath: instantProfits[index].imagePath,
                title: instantProfits[index].title,
                content: instantProfits[index].content);
          }),
    );
  }

  Widget _buildPageWidget(
      {required double screenWidth,
      required String imagePath,
      required String title,
      required String content}) {
    return Container(
      padding: const EdgeInsets.only(top: 46.0),
      child: Stack(
        children: [
          const Positioned(
            top: 162.87,
            left: 0,
            right: 0,
            child: CircleGradientBlur(),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              children: [
                GradientText(
                  text: "Get Instant Profits At",
                  style: AppStyle.textHeader,
                  gradient: AppColor.buildGradient(),
                ),
                spaceH12,
                SvgPicture.asset(Assets.images.metamaskSeeklogo),
                spaceH24,
                Image.asset(imagePath)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ContainerCustomPaint(
              screenWidth: screenWidth,
              child: Row(
                children: [
                  const PageNavigationButton(),
                  spaceW30,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        spaceH36,
                        Text(title,
                            textAlign: TextAlign.center,
                            style: AppStyle.textTitle),
                        const SizedBox(height: 8.0),
                        Text(
                          content,
                          textAlign: TextAlign.center,
                          style: AppStyle.textContent,
                        ),
                        const Spacer(),
                        PageIndicatorCustom(
                          pageController: pageController,
                          count: instantProfits.length,
                        ),
                        spaceH24,
                        ExploreButton(
                          onTap: () {},
                        ),
                        const SizedBox(height: 52.0)
                      ],
                    ),
                  ),
                  spaceW30,
                  const PageNavigationButton(
                    isRight: true,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
