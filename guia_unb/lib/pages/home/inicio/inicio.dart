import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/category_card.dart';
import '../../../core/components/doubt_card.dart';
import '../../../core/models/category.dart';
import '../../../core/providers/load_data.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    List<Category> categories = Provider.of<LoadData>(context).data;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          toolbarHeight: 120,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Duvidas Frequentes",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
              ),
              Text(
                "Lista de dúvidas frequentes",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.8),
                      fontSize: 16,
                    ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenSize.height * 0.365,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemCount: categories.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (_, index) => CategoryCard(
                  title: categories[index].title,
                  description: categories[index].description,
                  icon: Icons.ac_unit,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "/category",
                      arguments: categories[index],
                    );
                  },
                ),
              ),
            ),
            const Divider(),
            Row(
              children: [
                const SizedBox(width: 15),
                Text(
                  "Dúvidas Discplinares",
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
              height: screenSize.height * 0.34,
              child: ListView.builder(
                itemCount: categories[0].doubts.length,
                itemBuilder: (_, index) {
                  final category = categories[0];
                  return DoubtCard(
                    title: category.doubts[index].title,
                    description: category.doubts[index].description,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/doubt",
                        arguments: category.doubts[index],
                      );
                    }
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
