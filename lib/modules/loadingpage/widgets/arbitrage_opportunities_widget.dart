import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/card/profit_card_custom.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/explore_button.dart';

class ArbitrageOpportunitiesWidget extends StatefulWidget {
  const ArbitrageOpportunitiesWidget({super.key});

  @override
  State<ArbitrageOpportunitiesWidget> createState() =>
      _ArbitrageOpportunitiesWidgetState();
}

class _ArbitrageOpportunitiesWidgetState
    extends State<ArbitrageOpportunitiesWidget> {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
              textAlign: TextAlign.center,
              'Identify the fluctuations of crypto pairs every second and filter \n out the crypto pairs with the best spreads. Using \n complex technological algorithms, the system will help \n customers have many trading opportunities with great profits',
              style: TextStyle(color: AppColor.grey300, fontSize: 14.0)),
        ),
        spaceH24,
        _buildCarouselSlider(),
        spaceH12,
        _buildCarouselSlider(reverse: false),
        spaceH24,
        ExploreButton(
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }
}

Widget _buildCarouselSlider({bool? reverse}) {
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
        height: 120,
        initialPage: 0,
        viewportFraction: 0.45,
        disableCenter: true,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        scrollDirection: Axis.horizontal,
        reverse: reverse ?? true),
  );
}
