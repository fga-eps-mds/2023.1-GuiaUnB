import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.primary,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
          tertiary: AppColors.labelTitle,
          background: AppColors.background,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBarColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.labelTitle,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.labelTitle,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 30,
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.divider,
          thickness: 1,
        ),
        canvasColor: AppColors.cardBackground,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: AppColors.labelTitle,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            color: AppColors.labelWhite,
            fontSize: 12,
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
            color: AppColors.labelTitle,
          ),
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColors.labelTitle,
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
          color: AppColors.cardBackground,
          elevation: 5,
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
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          },
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primaryDark,
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primaryDark,
          secondary: AppColors.secondaryDark,
          background: AppColors.appBarColorDark,
          tertiary: AppColors.lightBlue,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.appBarColorDark,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.lightBlue,
          ),
          titleTextStyle: TextStyle(
            color: AppColors.labelWhite,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 30,
          ),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.dividerDark,
          thickness: 1,
        ),
        canvasColor: AppColors.backgroundDark,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: AppColors.labelWhite,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            color: AppColors.labelWhite,
            fontSize: 12,
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
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: AppColors.labelWhite,
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.primaryDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
          textTheme: ButtonTextTheme.primary,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.secondaryDark,
        ),
        cardTheme: const CardTheme(
          color: AppColors.cardBackground,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        dialogTheme: const DialogTheme(
          alignment: Alignment.center,
          backgroundColor: AppColors.backgroundDark,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          },
        ),
      );
}
