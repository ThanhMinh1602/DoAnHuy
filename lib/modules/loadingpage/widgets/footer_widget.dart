import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:galaxy_web3/app/constants/app_color.dart';
import 'package:galaxy_web3/app/core/utils/font_weight.dart';
import 'package:galaxy_web3/app/core/utils/spaces.dart';
import 'package:galaxy_web3/gen/assets.gen.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
      decoration: BoxDecoration(gradient: AppColor.buildGradient(opacity: 0.1)),
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.images.logo,
            width: 48.0,
            height: 48.0,
          ),
          spaceH32,
          const FooterLinks(),
          spaceH32,
          const SocialIcons(),
          spaceH24,
          Divider(color: AppColor.whiteColor.withOpacity(0.1)),
          spaceH24,
          const FooterLegal(),
          spaceH16,
          Text(
            '© 2024 Galaxy. All Rights Reserved.',
            style: TextStyle(
                fontSize: 16.0, fontWeight: regular, color: AppColor.grey200),
          )
        ],
      ),
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 124.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLinkText('White Paper'),
          FooterLinkText('Resources'),
          FooterLinkText('Project Introduction'),
          FooterLinkText('FAQ'),
        ],
      ),
    );
  }
}

class FooterLinkText extends StatelessWidget {
  final String text;
  const FooterLinkText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
        color: AppColor.whiteColor,
        fontWeight: medium,
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 236,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Assets.icons.fbIcon, width: 32.0, height: 32.0),
          SvgPicture.asset(Assets.icons.instagramIcon,
              width: 32.0, height: 32.0),
          SvgPicture.asset(Assets.icons.telegramIcon,
              width: 32.0, height: 32.0),
          SvgPicture.asset(Assets.icons.xIcon, width: 32.0, height: 32.0),
          SvgPicture.asset(Assets.icons.mediumIcon, width: 32.0, height: 32.0),
        ],
      ),
    );
  }
}

class FooterLegal extends StatelessWidget {
  const FooterLegal({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 201,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLegalText('Privacy'),
          FooterLegalText('Disclaimer'),
          FooterLegalText('Legal'),
        ],
      ),
    );
  }
}

class FooterLegalText extends StatelessWidget {
  final String text;
  const FooterLegalText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: regular,
        color: AppColor.grey500,
      ),
    );
  }
}
