import 'package:flutter/material.dart';
import 'package:movie_app/shared/constants/app_colors.dart';

class AppTheme {
  static final light = ThemeData(
    colorScheme: .fromSeed(seedColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.lightAppBarBackground,
      foregroundColor: AppColors.darkAppBarBackground,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightAppBarBackground,
      selectedItemColor: AppColors.primaryColor,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.darkAppBarBackground.withAlpha(10),
    ),
  );
  static final dark = ThemeData(
    colorScheme: .fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: .dark,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarThemeData(
      backgroundColor: AppColors.darkAppBarBackground,
      foregroundColor: AppColors.lightAppBarBackground,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkAppBarBackground,
      selectedItemColor: AppColors.primaryColor,
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.lightAppBarBackground.withAlpha(10),
    ),
    brightness: .dark,
  );
}
