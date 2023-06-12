import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';

import '../../core/models/category.dart';
import '../../core/models/doubt.dart';

class DoubtPage extends StatelessWidget {
  const DoubtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final category = arguments['category'] as Category;
    final Map<String, dynamic> doubtData =
        arguments['doubt'] as Map<String, dynamic>;
    final doubt = Doubt(
        title: doubtData['title'],
        description: doubtData['description'],
        body: doubtData['body'],
        icon: doubtData['icon']);
    final theme = Theme.of(context);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) {
          return [
            SliverAppBar(
              title: Text(doubt.title, style: theme.textTheme.headlineLarge),
              floating: true,
              // O AppBar fica flutuante enquanto você rola
              pinned: true,
              // O AppBar é fixado no topo
              expandedHeight: 250,
              // Altura expandida do AppBar
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.tertiary.withOpacity(0.3),
                        theme.colorScheme.tertiary.withOpacity(0.6),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      category.icon,
                      size: 64,
                      color: theme.colorScheme.onPrimary.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Column(
          children: [
            ListTile(
              isThreeLine: true,
              leading: Icon(
                doubt.icon,
                size: 32,
                color: theme.colorScheme.tertiary,
              ),
              title: Text(doubt.title, style: theme.textTheme.labelMedium),
              subtitle: Text(category.title.toUpperCase(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.6),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                doubt.body,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
