import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const addButtonColor = Color(0xff3EBF1B);
const anotherGrayColor = Color(0xffD9E1E7);
const buttonBackgroundColor = Color(0xffDEDDEC);
const closeButtonBackground = Color(0xffF8F9FA);
const inputBackgroundColor = Color(0xffF2F5F7);
const labelBackgroundColor = Color(0xffF4F5F7);
const labelForegroundColor = Color(0xff7F858C);
const lightColor = Color(0xff94A3B8);
const menuButtonColor = Color(0xffC8D2E2);
const primaryDarkColor = Color(0xff374151);
const redAccentColor = Color(0xffF3E2E4);

const redColor = Color(0xffE31C1C);

const _buttonsRadius = 16.0;

final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    primary: Color(0xff7C3AED),
    primaryContainer: Color(0xff9584c6),
    secondary: Color(0xffff8501),
    secondaryContainer: Color(0xffffb667),
    tertiary: Color(0xffe0e4eb),
    tertiaryContainer: Color(0xfff6f7f9),
    appBarColor: Color(0xffffb667),
    error: Color(0xffb00020),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 9,
  lightIsWhite: true,
  subThemesData: const FlexSubThemesData(
    useM2StyleDividerInM3: true,
    textButtonRadius: _buttonsRadius,
    filledButtonRadius: _buttonsRadius,
    elevatedButtonRadius: _buttonsRadius,
    outlinedButtonRadius: _buttonsRadius,
    toggleButtonsRadius: _buttonsRadius,
    inputDecoratorBorderWidth: 1.5,
    segmentedButtonSchemeColor: SchemeColor.primary,
    inputDecoratorSchemeColor: SchemeColor.onPrimary,
    inputDecoratorBorderSchemeColor: SchemeColor.tertiary,
    blendTextTheme: true,
    inputDecoratorIsFilled: false,
    inputDecoratorRadius: 12.0,
    fabSchemeColor: SchemeColor.primary,
    tooltipWaitDuration: Duration(milliseconds: 1500),
    dialogElevation: 0,
    dialogBackgroundSchemeColor: SchemeColor.onPrimary,
    dialogRadius: 16,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  scaffoldBackground: const Color(0xffF3F5F7),
  fontFamily: GoogleFonts.inter().fontFamily,
).copyWith(
  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: Colors.white,
      // backgroundColor: const Color(0xff9584c6),
    ),
  ),
);
