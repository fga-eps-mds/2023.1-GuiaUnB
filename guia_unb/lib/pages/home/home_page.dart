import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../../../core/components/category_card.dart';
import '../../../core/components/doubt_card.dart';
import '../../../core/models/category.dart';
import '../../../core/providers/load_data.dart';
import '../../core/config/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final categories = Provider.of<LoadData>(context).data;

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Duvidas Frequentes",
        subtitle: "Lista de dúvidas frequentes",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.33,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (_, index) => CategoryCard(
                  title: categories[index].title,
                  description: categories[index].description,
                  icon: categories[index].icon,
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.category,
                    arguments: categories[index],
                  ),
                ),
              ),
            ),
            const Divider(),
            Row(
              children: [
                const SizedBox(width: 15),
                Text(
                  "Dúvidas Disciplinares",
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
                  onPressed: () {},
                  child: Text("Ver todos", style: theme.textTheme.bodySmall),
                ),
                const SizedBox(width: 15),
              ],
            ),
            const Divider(),
            SizedBox(
              height: screenSize.height * 0.38,
              child: ListView.builder(
                itemCount: categories[0].doubts.length,
                itemBuilder: (_, index) {
                  final category = categories[0];
                  return DoubtCard(
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
