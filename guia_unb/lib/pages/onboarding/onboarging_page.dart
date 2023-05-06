import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guia_unb/core/config/routes/routes.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: const SizedBox()),
          ),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Text("Bem vindo", style: textTheme.titleLarge),
                  Text("Obrigado por baixar o Guia UnB",
                      style: textTheme.labelMedium),
                  const SizedBox(height: 500),
                  ElevatedButton(
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(textTheme.labelMedium),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF165AB7),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(Routes.home),
                    child: const Text("Começar"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}