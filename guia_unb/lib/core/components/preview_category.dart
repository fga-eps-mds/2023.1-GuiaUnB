import 'package:flutter/material.dart';
import 'package:guia_unb/core/models/category.dart';

import '../config/routes/routes.dart';
import 'doubt_card.dart';

class PreviewCategory extends StatelessWidget {
  const PreviewCategory({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final previewDoubts = category.doubts.sublist(0, 2);

    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: [
              const SizedBox(width: 15),
              Text(
                category.title,
                style: theme.textTheme.labelMedium,
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.tertiary,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.category,
                  arguments: category,
                ),
                child: Text('Ver todos', style: theme.textTheme.bodySmall),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
        const Divider(),
        SizedBox(
          height: 220,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: previewDoubts.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  DoubtCard(
                    title: previewDoubts[index].title,
                    description: previewDoubts[index].description,
                    icon: previewDoubts[index].icon,
                    onTap: () => Navigator.pushNamed(
                      context,
                      Routes.doubt,
                      arguments: {
                        'category': category,
                        'doubt': {
                          'title': previewDoubts[index].title,
                          'description': previewDoubts[index].description,
                          'body': previewDoubts[index].body,
                          'icon': previewDoubts[index].icon,
                          'link': previewDoubts[index].link,
                        },
                      },
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
