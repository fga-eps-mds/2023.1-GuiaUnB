import 'package:flutter/material.dart';
import '../core/config/theme/app_theme.dart';
import '../pages/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      home: const Onboarding(),
    );
  }
}
