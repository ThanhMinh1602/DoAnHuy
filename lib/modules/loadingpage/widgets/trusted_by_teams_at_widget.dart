import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/utils/font_weight.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class TrustedByTeamsAtWidget extends StatelessWidget {
  const TrustedByTeamsAtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Trusted By Teams At',
          style: TextStyle(
              fontSize: 20.0, fontWeight: bold, color: AppColor.whiteColor),
        ),
        spaceH16,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 24.0),
          decoration: BoxDecoration(
              gradient: AppColor.buildGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                AppColor.whiteColor.withOpacity(0.05),
                AppColor.whiteColor.withOpacity(0.02)
              ])),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.centrifugeSvg),
                  spaceW18,
                  SvgPicture.asset(Assets.images.fireblocksSvg),
                  spaceW18,
                  SvgPicture.asset(Assets.images.consensysSvg),
                ],
              ),
              spaceH18,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.jpMorganChaseSvg),
                  spaceW18,
                  SvgPicture.asset(Assets.images.masSvg),
                ],
              ),
              spaceH18,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.bancoCentral),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
