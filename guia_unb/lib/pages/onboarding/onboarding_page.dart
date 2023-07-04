import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/components/onboarding_slide.dart';
import '../../core/config/routes/routes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;

  List<Widget> onboardingSlides = const [
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Bem-vindo',
      description:
          'O Guia UnB é um aplicativo que te ajuda a tirar dúvidas sobre a Universidade de Brasília.',
    ),
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Benefícios',
      description:
          'O app traz benefícios como acesso rápido a informações relevantes sobre a UnB, com uma interface intuitiva e amigável para uma navegação fácil e agradável.',
    ),
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Orientações',
      description:
          'Na tela inicial é possível ver as dúvidas frequentes separadas por categoria.',
    ),
  ];

  Future<void> completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
  }

  @override
  Widget build(BuildContext context) {
    final isNotLastPage = currentIndex < onboardingSlides.length - 1;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: onboardingSlides,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: DotsIndicator(
              dotsCount: onboardingSlides.length,
              position: currentIndex.toDouble(),
              decorator: DotsDecorator(
                activeColor: Theme.of(context).colorScheme.secondary,
                activeSize: const Size(10.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                spacing: const EdgeInsets.all(4.0),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
            ),
            onPressed: () async {
              if (isNotLastPage) {
                _carouselController.nextPage();
              } else {
                await completeOnboarding().then(
                  (_) => Navigator.pushReplacementNamed(context, Routes.home),
                );
              }
            },
            child: Text(isNotLastPage ? 'Próximo' : 'Começar',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
          ),
          const SizedBox(height: 60.0),
        ],
      ),
    );
  }
}
