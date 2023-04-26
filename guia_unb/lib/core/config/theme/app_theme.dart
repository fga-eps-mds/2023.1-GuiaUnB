import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      canvasColor: Colors.white,
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
        buttonColor: const Color(0xFF165AB7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
        textTheme: ButtonTextTheme.primary,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }
}
