import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/app_card.dart';
import 'package:guia_unb/pages/home/dicas/tips_content.dart';

class TipsPage extends StatelessWidget {
  TipsPage({super.key});

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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
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

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppCard(
              title: 'Dicas de estudo',
              subtitle: 'Algumas dicas para ajudar com os estudos.',
              icon: Icons.lightbulb_outline,
              onTap: () => openDialog("Dicas de estudo", TipsContent.estudoContent),
            ),
            AppCard(
              title: 'Dicas de saúde',
              subtitle: 'Algumas dicas para ajudar com a saúde.',
              icon: Icons.local_hospital,
              onTap: () => openDialog("Dicas de saúde", TipsContent.saudeContent),
            ),
          ],
        ),
      ),
    );
  }
}
