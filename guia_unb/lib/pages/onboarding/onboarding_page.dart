import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:guia_unb/pages/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/components/onboarding_slide.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselController _carouselController = CarouselController();
  int currentIndex = 0;

  List<Widget> onboardingSlides = const [
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Bem-vindo ao Guia UnB',
      description:
          'O Guia UnB é um aplicativo que te ajuda a tirar dúvidas sobre a Universidade de Brasília.',
    ),
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Advanced Features',
      description: 'Enjoy advanced and personalized features.',
    ),
    OnboardingSlide(
      image: 'assets/images/logo.png',
      title: 'Easy to Use',
      description: 'Navigate easily and enjoy the user experience.',
    ),
  ];

  Future<void> completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
  }

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: DotsIndicator(
              dotsCount: onboardingSlides.length,
              position: currentIndex.toDouble(),
              decorator: DotsDecorator(
                activeColor: Theme.of(context).colorScheme.secondary,
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                spacing: const EdgeInsets.all(4.0),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 15.0,
              ),
            ),
            onPressed: () {
              if (currentIndex < onboardingSlides.length - 1) {
                _carouselController.nextPage();
              } else {
                completeOnboarding();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              }
            },
            child: Text(
                currentIndex < onboardingSlides.length - 1
                    ? 'Próximo'
                    : 'Começar',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
          ),
          const SizedBox(height: 70.0),
        ],
      ),
    );
  }
}
