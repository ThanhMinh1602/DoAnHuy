import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/card/model/information.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ArbitragePlatform extends StatelessWidget {
  const ArbitragePlatform({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        _buildTitle(),
        spaceH10,
        _buildBanner(screenWidth),
        spaceH20,
        GridView.builder(
          itemCount: profileUtils.length,
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 180),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 206.0,
              child: Stack(
                children: [_buildGridCard(index), _buildGridIcon(index)],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildGridIcon(int index) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        width: 52.0,
        height: 52.0,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            gradient: AppColor.gradientc_310D0c_31D0D0,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 24.0,
                  spreadRadius: 0,
                  color: AppColor.c_DC349E.withOpacity(0.5))
            ]),
        child: SvgPicture.asset(
          profileUtils[index].icon,
        ),
      ),
    );
  }

  Widget _buildGridCard(int index) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 26,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0)
            .copyWith(top: 36.0, bottom: 24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
          gradient: LinearGradient(colors: [
            AppColor.c_31D0D0.withOpacity(0.1),
            AppColor.c_DC349E.withOpacity(0.1),
          ]),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                AppColor.c_31D0D0.withOpacity(0.2),
                AppColor.c_DC349E.withOpacity(0.2),
              ],
            ),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                textAlign: TextAlign.center,
                profileUtils[index].title,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            spaceH4,
            Text(
                textAlign: TextAlign.center,
                profileUtils[index].description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ))
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        GradientText(
          text: "The World’s Best ",
          style: AppStyle.textHeader,
          gradient: AppColor.gradientc_310D0c_31D0D0,
        ),
        spaceH4,
        Center(
          child: GradientText(
            text: "Arbitrage Platform",
            style: AppStyle.textHeader,
            gradient: AppColor.gradientc_310D0c_31D0D0,
          ),
        ),
        spaceH8,
        const Text(
          "Automated Operation By Smart Contract",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        spaceH8,
        CustomButton(
          btnTxt: 'Join Now',
          width: 128,
          icon: Assets.icons.arrowRightFill.path,
          gradient: AppColor.gradientc_310D0c_31D0D0,
          onTap: () {},
        ),
      ],
    );
  }

  Image _buildBanner(double screenWidth) {
    return Image.asset(
      Assets.images.headerbanner.path,
      fit: BoxFit.cover,
      width: screenWidth,
      height: 300.0,
    );
  }
}
