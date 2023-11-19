/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow-left.svg');

  /// File path: assets/icons/bell-01.svg
  SvgGenImage get bell01 => const SvgGenImage('assets/icons/bell-01.svg');

  /// File path: assets/icons/check-verified-02.svg
  SvgGenImage get checkVerified02 =>
      const SvgGenImage('assets/icons/check-verified-02.svg');

  /// File path: assets/icons/gaming-pad-01.svg
  SvgGenImage get gamingPad01 =>
      const SvgGenImage('assets/icons/gaming-pad-01.svg');

  /// File path: assets/icons/headphones-02.svg
  SvgGenImage get headphones02 =>
      const SvgGenImage('assets/icons/headphones-02.svg');

  /// File path: assets/icons/heart-rounded.svg
  SvgGenImage get heartRounded =>
      const SvgGenImage('assets/icons/heart-rounded.svg');

  /// File path: assets/icons/home-line.svg
  SvgGenImage get homeLine => const SvgGenImage('assets/icons/home-line.svg');

  /// File path: assets/icons/minus.svg
  SvgGenImage get minus => const SvgGenImage('assets/icons/minus.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/printer.svg
  SvgGenImage get printer => const SvgGenImage('assets/icons/printer.svg');

  /// File path: assets/icons/search-lg.svg
  SvgGenImage get searchLg => const SvgGenImage('assets/icons/search-lg.svg');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/shopping-bag-03.svg
  SvgGenImage get shoppingBag03 =>
      const SvgGenImage('assets/icons/shopping-bag-03.svg');

  /// File path: assets/icons/speaker-01.svg
  SvgGenImage get speaker01 => const SvgGenImage('assets/icons/speaker-01.svg');

  /// File path: assets/icons/star-01-1.svg
  SvgGenImage get star011 => const SvgGenImage('assets/icons/star-01-1.svg');

  /// File path: assets/icons/star-01.svg
  SvgGenImage get star01 => const SvgGenImage('assets/icons/star-01.svg');

  /// File path: assets/icons/user-03.svg
  SvgGenImage get user03 => const SvgGenImage('assets/icons/user-03.svg');

  /// List of all assets
  List<dynamic> get values => [
        arrowLeft,
        bell01,
        checkVerified02,
        gamingPad01,
        headphones02,
        heartRounded,
        homeLine,
        minus,
        plus,
        printer,
        searchLg,
        search,
        shoppingBag03,
        speaker01,
        star011,
        star01,
        user03
      ];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/products_1.json
  String get products1 => 'assets/json/products_1.json';

  /// File path: assets/json/products_2.json
  String get products2 => 'assets/json/products_2.json';

  /// List of all assets
  List<String> get values => [products1, products2];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
