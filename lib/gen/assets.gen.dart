/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow_right_fill.png
  AssetGenImage get arrowRightFill =>
      const AssetGenImage('assets/icons/arrow_right_fill.png');

  /// File path: assets/icons/consistebtly_low_icon.svg
  String get consistebtlyLowIcon => 'assets/icons/consistebtly_low_icon.svg';

  /// File path: assets/icons/interoperability.svg
  String get interoperability => 'assets/icons/interoperability.svg';

  /// File path: assets/icons/introduce_icon.svg
  String get introduceIcon => 'assets/icons/introduce_icon.svg';

  /// File path: assets/icons/process_icon.svg
  String get processIcon => 'assets/icons/process_icon.svg';

  /// List of all assets
  List<dynamic> get values => [
        arrowRightFill,
        consistebtlyLowIcon,
        interoperability,
        introduceIcon,
        processIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/accessibility.svg
  String get accessibility => 'assets/images/accessibility.svg';

  /// File path: assets/images/bgr_video_blur_img.png
  AssetGenImage get bgrVideoBlurImg =>
      const AssetGenImage('assets/images/bgr_video_blur_img.png');

  /// File path: assets/images/blockchain_apps.png
  AssetGenImage get blockchainApps =>
      const AssetGenImage('assets/images/blockchain_apps.png');

  /// File path: assets/images/blur_gradient.svg
  String get blurGradient => 'assets/images/blur_gradient.svg';

  /// File path: assets/images/fox.png
  AssetGenImage get foxPng => const AssetGenImage('assets/images/fox.png');

  /// File path: assets/images/fox.svg
  String get foxSvg => 'assets/images/fox.svg';

  /// File path: assets/images/headerbanner.png
  AssetGenImage get headerbanner =>
      const AssetGenImage('assets/images/headerbanner.png');

  /// File path: assets/images/high_leverage.svg
  String get highLeverage => 'assets/images/high_leverage.svg';

  /// File path: assets/images/icon_menu.svg
  String get iconMenu => 'assets/images/icon_menu.svg';

  /// File path: assets/images/instant_proffit_bgr.svg
  String get instantProffitBgr => 'assets/images/instant_proffit_bgr.svg';

  /// File path: assets/images/instant_profits_png.png
  AssetGenImage get instantProfitsPng =>
      const AssetGenImage('assets/images/instant_profits_png.png');

  /// File path: assets/images/introduce.png
  AssetGenImage get introduce =>
      const AssetGenImage('assets/images/introduce.png');

  /// File path: assets/images/logo.svg
  String get logo => 'assets/images/logo.svg';

  /// File path: assets/images/metamask_seeklogo.svg
  String get metamaskSeeklogo => 'assets/images/metamask_seeklogo.svg';

  /// File path: assets/images/metamask_text.svg
  String get metamaskText => 'assets/images/metamask_text.svg';

  /// File path: assets/images/next_page.svg
  String get nextPage => 'assets/images/next_page.svg';

  /// File path: assets/images/own_your_data.png
  AssetGenImage get ownYourData =>
      const AssetGenImage('assets/images/own_your_data.png');

  /// File path: assets/images/polygon.svg
  String get polygon => 'assets/images/polygon.svg';

  /// File path: assets/images/previous_page_icon.svg
  String get previousPageIcon => 'assets/images/previous_page_icon.svg';

  /// File path: assets/images/trading _opportunities.svg
  String get tradingOpportunities => 'assets/images/trading _opportunities.svg';

  /// File path: assets/images/transparency_security.svg
  String get transparencySecurity => 'assets/images/transparency_security.svg';

  /// File path: assets/images/video_player.png
  AssetGenImage get videoPlayer =>
      const AssetGenImage('assets/images/video_player.png');

  /// File path: assets/images/your_wallet_web3.png
  AssetGenImage get yourWalletWeb3 =>
      const AssetGenImage('assets/images/your_wallet_web3.png');

  /// List of all assets
  List<dynamic> get values => [
        accessibility,
        bgrVideoBlurImg,
        blockchainApps,
        blurGradient,
        foxPng,
        foxSvg,
        headerbanner,
        highLeverage,
        iconMenu,
        instantProffitBgr,
        instantProfitsPng,
        introduce,
        logo,
        metamaskSeeklogo,
        metamaskText,
        nextPage,
        ownYourData,
        polygon,
        previousPageIcon,
        tradingOpportunities,
        transparencySecurity,
        videoPlayer,
        yourWalletWeb3
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
