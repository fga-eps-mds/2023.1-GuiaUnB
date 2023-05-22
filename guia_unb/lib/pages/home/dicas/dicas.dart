import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/app_card.dart';
import 'package:guia_unb/pages/home/dicas/tips_content.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Function? openDialog(String title, List<Widget> content) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: content,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Fechar'),
              ),
            ],
          );
        },
      );
      return null;
    }

    return Text('data');
  }
}
