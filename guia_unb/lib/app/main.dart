import 'package:flutter/material.dart';
import '../core/config/routes/routes.dart';
import '../core/config/theme/app_theme.dart';
import '../pages/home/home_page.dart';
import '../pages/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme(),
      routes: {
        Routes.onboarding: (_) => const OnboardingPage(),
        Routes.home: (_) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
