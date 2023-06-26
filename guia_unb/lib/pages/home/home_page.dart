import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/custom_appbar.dart';
import 'package:guia_unb/core/components/preview_category.dart';
import 'package:provider/provider.dart';

import '../../../core/components/category_card.dart';
import '../../../core/providers/database_provider.dart';
import '../../core/config/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final categories = Provider.of<DatabaseProvider>(context).data;

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Duvidas Frequentes',
        subtitle: 'Lista de dúvidas frequentes',
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.30,
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.49,
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (_, index) =>
                  Column(
                    children: [
                      PreviewCategory(category: categories[index]),
                      const Divider(),
                    ],
                  ),
            ),
          )
        ],
      ),
    );
  }
}
