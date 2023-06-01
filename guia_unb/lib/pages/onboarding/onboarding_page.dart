import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:guia_unb/core/config/routes/routes.dart';
import 'package:guia_unb/core/providers/load_data.dart';
import 'package:provider/provider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
                child: SvgPicture.asset(
              "assets/images/unb-logo.svg",
              height: 200,
              width: 200,
              alignment: Alignment.center,
            )),
            Positioned.fill(
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: const SizedBox()),
            ),
            Center(
              child: Column(
                children: [
                  Text("Bem vindo", style: textTheme.titleLarge),
                  Text(
                    "Obrigado por baixar o Guia UnB",
                    style: textTheme.labelMedium?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.9)),
                  ),
                  const SizedBox(height: 500),
                  ElevatedButton(
                    style: ButtonStyle(
                      textStyle:
                          MaterialStateProperty.all(textTheme.labelMedium),
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.secondary,
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 32),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    onPressed: () {
                      Provider.of<LoadData>(context, listen: false)
                          .loadData()
                          .then((_) =>
                              Navigator.of(context).pushNamed(Routes.home));
                    },
                    child: const Text("Começar"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
