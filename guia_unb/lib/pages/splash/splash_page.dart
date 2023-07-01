import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guia_unb/core/config/routes/routes.dart';
import 'package:guia_unb/core/providers/database_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    loadDataAndNavigate();
  }

  void loadDataAndNavigate() async {
    try {
      await Firebase.initializeApp().then((_) =>
          Provider.of<DatabaseProvider>(context, listen: false).loadData());
      navigateToAppropriateScreen();
    } catch (error) {
      debugPrint('Erro ao carregar os dados: $error');
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 45,
                ),
                SizedBox(width: 40),
                Text('Erro'),
              ],
            ),
            content: const Text('Não foi possível carregar os dados.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  SystemNavigator.pop();
                },
                child: Text(
                  'OK',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  void navigateToAppropriateScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool onboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;

    if (onboardingCompleted) {
      navigateToHomePage();
    } else {
      navigateToOnboarding();
    }
  }

  void navigateToHomePage() {
    _animationController.forward().whenComplete(() {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  void navigateToOnboarding() {
    _animationController.forward().whenComplete(() {
      Navigator.of(context).pushReplacementNamed(Routes.onboarding);
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: Center(
          child: SvgPicture.asset(
            'assets/images/unb-logo.svg',
            height: 200,
            width: 200,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
