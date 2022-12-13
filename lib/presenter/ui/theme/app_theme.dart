import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_colors.dart';
import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_font.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    highlightColor: AppColors.highLightLight,
    cardColor: AppColors.cardLight,
    backgroundColor: AppColors.backgroundLight,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    errorColor: AppColors.colorsError,
    iconTheme: const IconThemeData(
      color: AppColors.backgroundDark,
      // size: 21.45,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
    ),
    textTheme: TextTheme(
      headline1: AppFont.headline1.copyWith(
        color: AppColors.highLightLight,
      ),
      headline2: AppFont.headline2.copyWith(
        color: AppColors.highLightLight,
      ),
      bodyText1: AppFont.bodyText1.copyWith(
        color: AppColors.textDescription,
      ),
      bodyText2: AppFont.bodyText2.copyWith(
        color: AppColors.highLightLight,
        // PODE SER A  textDescription
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    highlightColor: AppColors.highLightDark,
    cardColor: AppColors.cardDark,
    backgroundColor: AppColors.backgroundDark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    errorColor: AppColors.colorsError,
    iconTheme: const IconThemeData(
      color: AppColors.backgroundLight,
      // size: 21.45,
    ),
    textTheme: TextTheme(
      headline2: AppFont.headline2.copyWith(
        color: AppColors.cardLight,
      ),
      subtitle1: AppFont.headline1.copyWith(
        color: AppColors.cardLight,
      ),
      bodyText1: AppFont.bodyText1.copyWith(
        color: AppColors.textDescription,
      ),
      bodyText2: AppFont.bodyText2.copyWith(
        color: AppColors.cardLight,
      ),
    ),
  );
}
