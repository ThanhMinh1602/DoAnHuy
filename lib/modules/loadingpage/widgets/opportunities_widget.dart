import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/card/profit_card_custom.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class Opportunities extends StatefulWidget {
  const Opportunities({super.key});

  @override
  State<Opportunities> createState() => _OpportunitiesState();
}

class _OpportunitiesState extends State<Opportunities> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH48,
        GradientText(
          text: "Arbitrage ",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        GradientText(
          text: "Opportunities ",
          style: AppStyle.textHeader,
          gradient: AppColor.buildGradient(),
        ),
        spaceH20,
        const Text('Focus On Cryptocurrency Arbitrage Trading',
            style: TextStyle(
                fontSize: 18.0,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.bold)),
        spaceH24,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
              textAlign: TextAlign.center,
              'Identify the fluctuations of crypto pairs every second and filter \n out the crypto pairs with the best spreads. Using \n complex technological algorithms, the system will help \n customers have many trading opportunities with great profits',
              style: TextStyle(color: AppColor.grey300, fontSize: 14.0)),
        ),
        spaceH24,
        _buildCarouselSlider(),
        spaceH12,
        _buildCarouselSlider(),
        spaceH24,
        CustomButton(
          btnTxt: 'Explore'.toUpperCase(),
          width: 153,
          icon: Assets.icons.arrowRightFill.path,
          gradient: AppColor.buildGradient(),
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }
}

Widget _buildCarouselSlider() {
  return CarouselSlider.builder(
    itemCount: 5,
    itemBuilder: (context, index, realIndex) {
      return ProfitCardCustom(
        title: 'USDT / LINK',
        profit: 1.5.toString(),
        leftIcon: Assets.icons.linkIcon.path,
        rightIcon: Assets.icons.linkIcon.path,
      );
    },
    options: CarouselOptions(
      height: 100,
      initialPage: 0,
      viewportFraction: 0.45,
      disableCenter: true,
      enlargeCenterPage: false,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayAnimationDuration: const Duration(seconds: 1),
      autoPlayCurve: Curves.linear,
      scrollDirection: Axis.horizontal,
    ),
  );
}
