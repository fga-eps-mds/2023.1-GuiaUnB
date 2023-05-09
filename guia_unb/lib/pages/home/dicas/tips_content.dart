import 'package:flutter/material.dart';

import '../../../core/components/app_card.dart';

class TipsContent {
  static const List<Widget> estudo = [
    AppCard(
      title: 'Organize seu tempo',
      subtitle:
          'Crie uma rotina de estudos, estabelecendo horários para cada atividade.',
      icon: Icons.lightbulb_outline,
    ),
    AppCard(
      title: 'Faça resumos',
      subtitle:
          'Após ler o conteúdo, faça um resumo com as principais informações.',
      icon: Icons.lightbulb_outline,
    ),
    AppCard(
      title: 'Faça exercícios práticos',
      subtitle:
          'Pratique resolvendo exercícios práticos, para fixar o conteúdo.',
      icon: Icons.lightbulb_outline,
    ),
    AppCard(
      title: 'Estude com antecedência',
      subtitle:
          'Não deixe para estudar em cima da hora. Comece a estudar com antecedência.',
      icon: Icons.lightbulb_outline,
    ),
  ];

  static const List<Widget> saude = [
    AppCard(
      title: 'Mantenha a higiene',
      subtitle:
          'Lave as mãos com frequência, evite compartilhar objetos pessoais e use máscaras de proteção.',
      icon: Icons.local_hospital,
    ),
    AppCard(
      title: 'Pratique atividades físicas',
      subtitle:
          'Faça exercícios físicos regularmente para manter a saúde em dia.',
      icon: Icons.local_hospital,
    ),
    AppCard(
      title: 'Mantenha uma alimentação saudável',
      subtitle: 'Coma alimentos saudáveis e evite alimentos industrializados.',
      icon: Icons.local_hospital,
    ),
    AppCard(
      title: 'Durma o suficiente',
      subtitle:
          'Dormir bem é essencial para manter a saúde física e mental em dia.',
      icon: Icons.local_hospital,
    ),
  ];
}
