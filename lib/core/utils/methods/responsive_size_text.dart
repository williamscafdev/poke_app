import 'package:flutter/widgets.dart';

class ResponsiveTextSize {
  static const double s48 = 48;
  static const double s40 = 40;
  static const double s32 = 32;
  static const double s36 = 36;
  static const double s24 = 24;
  static const double s20 = 20;
  static const double s18 = 18;
  static const double s16 = 16;
  static const double s14 = 14;
  static const double s12 = 12;
  static const double s10 = 10;

  static double get(BuildContext context, double baseSize) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1920) {
      return baseSize * 0.6;
    } else if (screenWidth >= 1280) {
      return baseSize * 0.7;
    } else if (screenWidth >= 960) {
      return baseSize * 0.85;
    } else if (screenWidth >= 600) {
      return baseSize * 1.0;
    } else {
      return baseSize * 1.5;
    }
  }
}
