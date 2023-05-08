import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/app_card.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dicas de Estudo',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const AppCard(
              title: 'Organize seu tempo',
              subtitle:
                  'Crie uma rotina de estudos, estabelecendo horários para cada atividade.',
              icon: Icons.lightbulb_outline,
            ),
            const AppCard(
              title: 'Faça resumos',
              subtitle:
                  'Após ler o conteúdo, faça um resumo com as principais informações.',
              icon: Icons.lightbulb_outline,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dicas de Saúde',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            const AppCard(
              title: 'Mantenha a higiene',
              subtitle:
                  'Lave as mãos com frequência, evite compartilhar objetos pessoais e use máscaras de proteção.',
              icon: Icons.local_hospital,
            ),
            const AppCard(
              title: 'Pratique atividades físicas',
              subtitle:
              'Faça exercícios físicos regularmente para manter a saúde em dia.',
              icon: Icons.local_hospital,
            ),
          ],
        ),
      ),
    );
  }
}
