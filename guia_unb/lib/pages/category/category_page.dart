import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/doubt_card.dart';
import 'package:guia_unb/core/models/category.dart';

import '../../core/config/routes/routes.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
          title: Text(category.title, style: theme.textTheme.titleSmall),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: ListView.builder(
        itemCount: category.doubts.length,
        itemBuilder: (_, index) => Column(
          children: [
            DoubtCard(
              title: category.doubts[index].title,
              description: category.doubts[index].description,
              icon: category.doubts[index].icon,
              onTap: () => Navigator.pushNamed(
                context,
                Routes.doubt,
                arguments: {
                  'category': category,
                  'doubt': {
                    'title': category.doubts[index].title,
                    'description': category.doubts[index].description,
                    'body': category.doubts[index].body,
                    'icon': category.doubts[index].icon,
                  },
                },
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
