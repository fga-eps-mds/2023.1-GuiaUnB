import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColors.secondary,
        ),
        titleTextStyle: TextStyle(
          color: AppColors.label,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
          fontSize: 28,
        ),
      ),
      canvasColor: AppColors.background,
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        labelMedium: TextStyle(
          color: AppColors.labelWhite,
          fontSize: 20,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 60,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: AppColors.labelWhite,
        ),
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColors.labelWhite,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
        textTheme: ButtonTextTheme.primary,
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primary,
      ),
      cardTheme: const CardTheme(
        color: AppColors.primary,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      dialogTheme: const DialogTheme(
        alignment: Alignment.center,
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      dividerColor: AppColors.primary,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
        },
      ),
    );
  }
}