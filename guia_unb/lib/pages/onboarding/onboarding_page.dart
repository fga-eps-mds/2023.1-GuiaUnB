import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:guia_unb/core/config/routes/routes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  bool _showContent = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _showContent = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: AnimatedOpacity(
        opacity: _showContent ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 700),
        child: Stack(
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/images/unb-logo.svg',
                height: 200,
                width: 200,
                alignment: Alignment.center,
              ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: const SizedBox(),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Text('Bem vindo',
                      style: theme.textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  Text(
                    'Obrigado por baixar o Guia UnB',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(height: 500),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSecondary,
                        ),
                        backgroundColor: theme.colorScheme.secondary,
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 32),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10),
                    onPressed: () =>
                        Navigator.of(context).pushReplacementNamed(Routes.home),
                    child: const Text('Começar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
