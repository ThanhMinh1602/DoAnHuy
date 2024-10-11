import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<String> tabs;

  const CustomTabBar({
    super.key,
    required this.controller,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      height: 44.0,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: AppColor.c_111D1B,
      ),
      child: TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          gradient: AppColor.buildGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.c_31D0D0,
              AppColor.c_31D0D0.withOpacity(0.1),
            ],
          ),
        ),
        dividerColor: Colors.transparent,
        tabs: tabs.map((tab) {
          return Container(
            width: 134.0,
            height: 36.0,
            alignment: Alignment.center,
            child: Text(
              tab,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: AppColor.whiteColor,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
