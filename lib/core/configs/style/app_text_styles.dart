import 'package:flutter/material.dart';
import 'package:poke_app/core/configs/style/style.dart';
import 'package:poke_app/core/utils/utils.dart';

const String font = 'Public Sans';

TextStyle textStyle = const TextStyle(
  fontFamily: font,
  letterSpacing: 0,
  color: AppColors.white,
);

class TextStyleApp extends TextStyle {
  const TextStyleApp._({
    double fontSize = ResponsiveTextSize.s16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.black,
  }) : super(
          fontFamily: font,
          fontStyle: FontStyle.normal,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          height: 1.5,
        );

  static const h1 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s20,
    fontWeight: FontWeight.w700,
  );
  static const h1Header = TextStyleApp._(
    fontSize: ResponsiveTextSize.s24,
    fontWeight: FontWeight.w700,
  );
  static const h1High = TextStyleApp._(
    fontSize: ResponsiveTextSize.s36,
    fontWeight: FontWeight.w700,
  );

  static const h2Bold = TextStyleApp._(
    fontSize: ResponsiveTextSize.s18,
    fontWeight: FontWeight.w700,
  );
  static const h2BoldSmall = TextStyleApp._(
    fontWeight: FontWeight.w600,
  );

  static const h2 = TextStyleApp._(
    fontWeight: FontWeight.w600,
  );
  static const h2BSmall = TextStyleApp._(
    fontWeight: FontWeight.w700,
  );
  static const h2Ligth = TextStyleApp._();

  static const h3 = TextStyleApp._(
    fontSize: ResponsiveTextSize.s14,
    fontWeight: FontWeight.w600,
  );

  static const body = TextStyleApp._(
    fontSize: ResponsiveTextSize.s14,
  );
  static const bodyBold = TextStyleApp._(
    fontSize: ResponsiveTextSize.s14,
    fontWeight: FontWeight.w700,
  );

  static const caption = TextStyleApp._(
    fontSize: ResponsiveTextSize.s12,
  );
}

extension BetterStyle on TextStyle {
  TextStyle get w100 => copyWith(
        fontWeight: FontWeight.w100,
      );
  TextStyle get w200 => copyWith(
        fontWeight: FontWeight.w200,
      );
  TextStyle get w300 => copyWith(
        fontWeight: FontWeight.w300,
      );
  TextStyle get w500 => copyWith(
        fontWeight: FontWeight.w500,
      );
  TextStyle get w600 => copyWith(
        fontWeight: FontWeight.w600,
      );
  TextStyle get w700 => copyWith(
        fontWeight: FontWeight.w700,
      );
  TextStyle get w800 => copyWith(
        fontWeight: FontWeight.w800,
      );
  TextStyle get w900 => copyWith(
        fontWeight: FontWeight.w900,
      );

  TextStyle get black => copyWith(
        color: AppColors.black,
      );
  TextStyle get green => copyWith(
        color: AppColors.green,
      );
  TextStyle get red => copyWith(
        color: AppColors.red,
      );
  TextStyle get grey => copyWith(
        color: AppColors.grey,
      );
  TextStyle get grey50 => copyWith(
        color: AppColors.grey50,
      );
  TextStyle get grey100 => copyWith(
        color: AppColors.grey100,
      );
  TextStyle get yellow => copyWith(
        color: AppColors.yellow,
      );
  TextStyle get blue => copyWith(
        color: AppColors.blue,
      );
  TextStyle get white => copyWith(
        color: AppColors.white,
      );
}
