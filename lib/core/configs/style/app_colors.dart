import 'package:flutter/material.dart';

class AppColors {
  static const Color green = Color(0xFF4FA932);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color.fromARGB(255, 77, 77, 78);
  static const Color grey10 = Color.fromARGB(255, 60, 72, 72);
  static const Color grey50 = Color(0xFFA3A3A4);
  static const Color grey100 = Color(0xFFEDEDED);
  static const Color grey200 = Color(0xFFE6E6E6);
  static const Color yellow = Color(0xFFf7b32b);
  static const Color yellow50 = Color.fromARGB(255, 249, 203, 110);
  static const Color red = Color.fromARGB(255, 255, 17, 0);
  static const Color blue = Color(0xFF3E7AD4);
  static const Color blue50 = Color(0xFFD8ECFF);
  static const Color black50 = Color(0xFF111928);
  static const Color white = Color(0xFFFFFFFF);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1, 'shade values must be between 0 and 1');

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  static MaterialColor getMaterialColorFromColor(Color color) {
    final colorShades = <int, Color>{
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color,
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }
}
