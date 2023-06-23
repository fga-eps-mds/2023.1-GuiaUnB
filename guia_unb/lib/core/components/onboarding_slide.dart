import 'package:flutter/material.dart';

class OnboardingSlide extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingSlide({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            image,
            width: double.infinity,
          ),
          const SizedBox(height: 50),
          Text(
            title,
            style: theme.textTheme.titleSmall!.copyWith(
              fontSize: 24,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Text(
              description,
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 16,
                color: theme.colorScheme.onSurface.withOpacity(0.8),
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
