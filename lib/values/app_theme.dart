import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static const AppTheme instance = AppTheme._();

  ThemeData getLightTheme() {
    return ThemeData(
      primaryColor: AppColors.colorPrimary,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.colorPrimary,
        background: AppColors.colorBackground,
        onBackground: AppColors.colorBackgroundDark,
        shadow: AppColors.colorShadow,
        onSurface: AppColors.colorDarkGrey,
      ),
      unselectedWidgetColor: AppColors.colorPrimary,
      textTheme: AppTextTheme.instance.lightTextTheme,
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.colorPrimary,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.dark,
        primary: AppColors.colorPrimary,
        background: AppColors.colorBackgroundDark,
        onBackground: AppColors.colorBackground,
        shadow: AppColors.colorShadowDark,
        onSurface: AppColors.colorDarkGrey,
      ),
      textTheme: AppTextTheme.instance.darkTextTheme,
    );
  }
}
