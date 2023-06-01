import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guia_unb/pages/category/category_page.dart';
import 'package:guia_unb/pages/doubt/doubt_page.dart';
import 'package:guia_unb/pages/home/home_page.dart';
import 'package:guia_unb/pages/onboarding/onboarding_page.dart';
import 'package:provider/provider.dart';
import '../core/config/routes/routes.dart';
import '../core/config/theme/app_theme.dart';
import 'core/providers/load_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoadData(),
      child: MaterialApp(
        theme: AppTheme.appTheme(),
        darkTheme: AppTheme.appThemeDark(),
        routes: {
          Routes.onboarding: (_) => const OnboardingPage(),
          Routes.home: (_) => const HomePage(),
          Routes.category: (_) => const CategoryPage(),
          Routes.doubt: (_) => const DoubtPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}