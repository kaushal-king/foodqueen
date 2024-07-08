import 'package:flutter/material.dart';
import 'package:foodqueen/gen/fonts.gen.dart';

import 'app_colors.dart';

class AppTextTheme {
  AppTextTheme._();

  static AppTextTheme instance = AppTextTheme._();
  late final TextTheme lightTextTheme = _getLightTextTheme();
  late final TextTheme darkTextTheme = _getDarkTextTheme();

  final textTheme = ThemeData(fontFamily: FontFamily.adobeClean).textTheme;

  TextTheme _getLightTextTheme() {
    return textTheme.copyWith(
      headlineSmall: textTheme.headlineSmall?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: textTheme.labelMedium?.copyWith(
        fontSize: 13,
      )
    );
  }

  TextTheme _getDarkTextTheme() {
    return lightTextTheme.copyWith(
      displayLarge: lightTextTheme.displayLarge?.copyWith(
        color: AppColors.colorTextDark,
      ),
      displayMedium: lightTextTheme.displayMedium?.copyWith(
        color: AppColors.colorTextDark,
      ),
      displaySmall: lightTextTheme.displaySmall?.copyWith(
        color: AppColors.colorTextDark,
      ),
      headlineLarge: lightTextTheme.headlineLarge?.copyWith(
        color: AppColors.colorTextDark,
      ),
      headlineMedium: lightTextTheme.headlineMedium?.copyWith(
        color: AppColors.colorTextDark,
      ),
      headlineSmall: lightTextTheme.headlineSmall?.copyWith(
        color: AppColors.colorTextDark,
      ),
      titleLarge: lightTextTheme.titleLarge?.copyWith(
        color: AppColors.colorTextDark,
      ),
      titleMedium: lightTextTheme.titleMedium?.copyWith(
        color: AppColors.colorTextDark,
      ),
      titleSmall: lightTextTheme.titleSmall?.copyWith(
        color: AppColors.colorTextDark,
      ),
      bodyLarge: lightTextTheme.bodyLarge?.copyWith(
        color: AppColors.colorTextDark,
      ),
      bodyMedium: lightTextTheme.bodyMedium?.copyWith(
        color: AppColors.colorTextDark,
      ),
      bodySmall: lightTextTheme.bodySmall?.copyWith(
        color: AppColors.colorTextDark,
      ),
      labelLarge: lightTextTheme.labelLarge?.copyWith(
        color: AppColors.colorTextDark,
      ),
      labelMedium: lightTextTheme.labelMedium?.copyWith(
        color: AppColors.colorTextDark,
      ),
      labelSmall: lightTextTheme.labelSmall?.copyWith(
        color: AppColors.colorTextDark,
      ),
    );
  }
}
