import 'package:flutter/material.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/constants/app_style.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/app/core/widgets/button/custom_button.dart';
import 'package:galaxy_web3/app/core/widgets/text/gradient_text.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class ArbitrageOpportunities extends StatefulWidget {
  const ArbitrageOpportunities({super.key});

  @override
  State<ArbitrageOpportunities> createState() => _ArbitrageOpportunitiesState();
}

class _ArbitrageOpportunitiesState extends State<ArbitrageOpportunities> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        spaceH48,
        const GradientText(
          text: "Arbitrage ",
          style: AppStyle.textHeader,
          gradient: AppColor.gradientc_310D0c_31D0D0,
        ),
        const GradientText(
          text: "Opportunities ",
          style: AppStyle.textHeader,
          gradient: AppColor.gradientc_310D0c_31D0D0,
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
        SizedBox(
          height: 110,
          // width: 166,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(colors: [
                          AppColor.c_31D0D0.withOpacity(0.1),
                          AppColor.c_DC349E.withOpacity(0.1)
                        ])),
                    child: Column(
                      children: [
                        const Text(
                          'USDT / LINK',
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Token1.png'),
                            Column(
                              children: [
                                Image.asset('assets/images/Frame.png'),
                                Image.asset('assets/images/Frame1.png'),
                              ],
                            ),
                            Image.asset('assets/images/Token2.png')
                          ],
                        ),
                        const Text(
                          'Profit: 1,5%',
                          style: TextStyle(
                              color: AppColor.grey300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ));
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20.0);
              },
              itemCount: 10),
        ),
        spaceH10,
        SizedBox(
          height: 110,
          // width: 166,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(colors: [
                          AppColor.c_31D0D0.withOpacity(0.1),
                          AppColor.c_DC349E.withOpacity(0.1)
                        ])),
                    child: Column(
                      children: [
                        const Text(
                          'USDT / LINK',
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Token1.png'),
                            Column(
                              children: [
                                Image.asset('assets/images/Frame.png'),
                                Image.asset('assets/images/Frame1.png'),
                              ],
                            ),
                            Image.asset('assets/images/Token2.png')
                          ],
                        ),
                        const Text(
                          'Profit: 1,5%',
                          style: TextStyle(
                              color: AppColor.grey300,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ));
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 20.0);
              },
              itemCount: 10),
        ),
        spaceH24,
        CustomButton(
          btnTxt: 'Explore'.toUpperCase(),
          width: 153,
          icon: Assets.icons.arrowRightFill.path,
          gradient: AppColor.gradientc_310D0c_31D0D0,
          onTap: () {},
        ),
        spaceH48
      ],
    );
  }
}
