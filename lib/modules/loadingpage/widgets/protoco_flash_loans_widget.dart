import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/card/card_custom.dart';
import 'package:galaxy_web3/app/core/widgets/card/model/information.dart';
import 'package:galaxy_web3/app/core/widgets/tabbar/tab_bar_custom.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class ProtocoFlashLoansWidget extends StatefulWidget {
  const ProtocoFlashLoansWidget({super.key});

  @override
  State<ProtocoFlashLoansWidget> createState() =>
      _ProtocoFlashLoansWidgetState();
}

class _ProtocoFlashLoansWidgetState extends State<ProtocoFlashLoansWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {
        _currentIndex = tabController.index;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTabbar(),
        spaceH24,
        IndexedStack(
          index: _currentIndex,
          children: [
            _buildProtocolView(),
            _buildFlashLoansView(),
          ],
        )
      ],
    );
  }

  Widget _buildTabbar() {
    return SizedBox(
      width: double.infinity,
      height: 182,
      child: Stack(
        children: [
          Image.asset(Assets.images.aaveBanner.path),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: CustomTabBar(
                  controller: tabController,
                  tabs: const ['Protoco', 'Flash Loans'],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildProtocolView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              Assets.images.protocolImg.path,
            ),
          ),
          spaceH16,
          const Text(
            'Introduce',
            textAlign: TextAlign.center,
            style: AppStyle.textTitle,
          ),
          spaceH8,
          const Text(
            'Aave Protocol is a decentralized '
            'finance (DeFi) platform that functions '
            'on the Ethereum blockchain and enables '
            'users to lend and borrow a diverse range '
            'of cryptocurrencies without any intermediaries. '
            'The platform uses smart contracts to facilitate '
            'peer-to-peer lending through an open-source '
            'protocol and allows users to earn interest on '
            'deposits or access loans.',
            textAlign: TextAlign.center,
            style: AppStyle.textContent,
          ),
          spaceH24,
          _buildProtocolCarouselSlider()
        ],
      ),
    );
  }

  Widget _buildFlashLoansView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16.0),
          const Text(
            'Flash Loans',
            textAlign: TextAlign.center,
            style: AppStyle.textTitle,
          ),
          const SizedBox(height: 8.0),
          const Text(
            'Flash loans are uncollateralized loans that must be repaid '
            'within the same transaction. They enable users to borrow '
            'assets instantly without any collateral, as long as the '
            'liquidation happens in the same transaction.',
            textAlign: TextAlign.center,
            style: AppStyle.textContent,
          ),
          spaceH24,
          _buildFlashLoansCarouselSlider()
        ],
      ),
    );
  }

  Widget _buildProtocolCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: protocls.length,
      itemBuilder: (context, index, realIndex) {
        final data = protocls[index];
        return CardCustom(
          title: data.title,
          content: data.content,
          image: data.imagePath,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
        );
      },
      options: CarouselOptions(
        height: 365,
        initialPage: 0,
        viewportFraction: 0.8,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
      ),
    );
  }

  Widget _buildFlashLoansCarouselSlider() {
    return CarouselSlider.builder(
      itemCount: flashLoans.length,
      itemBuilder: (context, index, realIndex) {
        final data = flashLoans[index];
        return CardCustom(
          title: data.title,
          content: data.content,
          image: '',
        );
      },
      options: CarouselOptions(
        height: 222,
        initialPage: 0,
        viewportFraction: 0.65,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.25,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
      ),
    );
  }
}
