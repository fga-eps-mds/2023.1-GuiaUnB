import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'Poppins',
      textTheme: const TextTheme(
        labelMedium: TextStyle(
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
