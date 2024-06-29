import 'package:flutter/material.dart';
import 'package:poke_app/core/configs/style/style.dart';

class AppThemes {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: font,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.grey),
      scaffoldBackgroundColor: AppColors.grey,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.grey,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.grey,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.white),
      colorScheme: const ColorScheme.light(
        primary: AppColors.white,
      ),
      appBarTheme: const AppBarTheme(
        elevation: 2,
        backgroundColor: AppColors.black,
      ),
    );
  }
}
