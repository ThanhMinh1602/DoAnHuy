import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/widgets/appbar/app_bar_cuastom.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/card/model/information.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/arbitrage_platform_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/instant_profits_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/video_tutorials_widget.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class LoadingPageSrceen extends StatefulWidget {
  const LoadingPageSrceen({super.key});

  @override
  State<LoadingPageSrceen> createState() => _LoadingPageSrceenState();
}

class _LoadingPageSrceenState extends State<LoadingPageSrceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: _buildAppBar(),
      body: ListView(
        children: [
          spaceH18,
          const ArbitragePlatform(),
          const VideoTutorialsWidget(),
          const InstantProfitsWidget()
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      toolbarHeight: 64,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.images.iconMenu),
          ),
          SvgPicture.asset(
            Assets.images.logo,
          ),
          CustomButton(
            btnTxt: 'Connect Wallet',
            width: 128,
            textStyle: const TextStyle(
              color: AppColor.c_31D0D0,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            height: 34,
            onTap: () {},
          ),
        ],
      ),
      backgroundColor: AppColor.appBarColor,
    );
  }
}
