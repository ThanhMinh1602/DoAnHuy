import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/models/instant_profits.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/button/page_navigation_button.dart';
import 'package:galaxy_web3/app/core/widgets/circle_gradient_blur.dart';
import 'package:galaxy_web3/app/core/widgets/container_custom_paint.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class InstantProfitsWidget extends StatelessWidget {
  InstantProfitsWidget({super.key});
  PageController pageController = PageController();
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
                  gradient: AppColor.gradientc_310D0c_31D0D0,
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
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteColor),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          content,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: AppColor.whiteColor),
                        ),
                        const Spacer(),
                        SmoothPageIndicator(
                          controller: pageController,
                          count: instantProfits.length,
                          effect: WormEffect(
                            dotColor: AppColor.whiteColor.withOpacity(0.2),
                            activeDotColor: AppColor.whiteColor,
                            dotHeight: 8.0,
                            dotWidth: 8.0,
                          ),
                        ),
                        spaceH24,
                        CustomButton(
                          btnTxt: 'Explore'.toUpperCase(),
                          width: 153,
                          icon: Assets.icons.arrowRightFill.path,
                          gradient: AppColor.gradientc_310D0c_31D0D0,
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
