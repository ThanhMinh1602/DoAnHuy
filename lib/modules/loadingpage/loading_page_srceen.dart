import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/footer_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/protoco_flash_loans_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/arbitrage_opportunities_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/arbitrage_platform_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/get_instant_profits_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/power_lowest_network_fees_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/trusted_by_teams_at_widget.dart';
import 'package:galaxy_web3/modules/loadingpage/widgets/video_tutorials_widget.dart';

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
          GetInstantProfitsWidget(),
          const PowerLowestNetworkFeesWidget(),
          const ArbitrageOpportunitiesWidget(),
          const ProtocoFlashLoansWidget(),
          const TrustedByTeamsAtWidget(),
          const FooterWidget()
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
