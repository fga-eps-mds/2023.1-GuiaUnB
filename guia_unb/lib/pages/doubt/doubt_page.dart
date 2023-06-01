import 'package:flutter/material.dart';

import '../../core/models/category.dart';
import '../../core/models/doubt.dart';

class DoubtPage extends StatelessWidget {
  const DoubtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final Category category = arguments['category'] as Category;
    final Map<String, dynamic> doubtData =
        arguments['doubt'] as Map<String, dynamic>;
    final Doubt doubt = Doubt(
      title: doubtData['title'],
      description: doubtData['description'],
      body: doubtData['body'],
      // Atribua outras propriedades do objeto Doubt conforme necessário
    );
    final theme = Theme.of(context);
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text(doubt.title, style: theme.textTheme.headlineLarge),
              floating: true,
              // O AppBar fica flutuante enquanto você rola
              pinned: true,
              // O AppBar é fixado no topo
              expandedHeight: 400,
              // Altura expandida do AppBar
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'https://rap24horas.com.br/wp-content/uploads/2018/08/sucessofff.png',
                  fit: BoxFit.cover,
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
                Icons.book,
                color: theme.colorScheme.tertiary,
              ),
              title: Text(doubt.title, style: theme.textTheme.labelMedium),
              subtitle: Text(category.title.toUpperCase(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.6),
                  )
              ),
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
