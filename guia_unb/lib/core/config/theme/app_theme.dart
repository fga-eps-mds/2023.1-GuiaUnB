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
      ),
      canvasColor: AppColors.background,
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        labelMedium: TextStyle(
          fontSize: 20,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 60,
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
    );
  }
}