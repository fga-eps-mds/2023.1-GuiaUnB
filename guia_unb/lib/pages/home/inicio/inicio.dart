import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 10,
        color: theme.colorScheme.primary,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Direitos dos Alunos',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Aqui estão listados alguns dos principais direitos dos alunos na Universidade de Brasília:',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                '1. Direito à educação de qualidade',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Todo aluno tem o direito de receber uma educação de qualidade, que esteja de acordo com as normas e diretrizes educacionais estabelecidas pelo Ministério da Educação (MEC).',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                '2. Direito à participação em decisões acadêmicas',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Os alunos têm o direito de participar de decisões acadêmicas, como a escolha de representantes estudantis, e de ter seus interesses representados pelos órgãos competentes da universidade.',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                '3. Direito à liberdade de expressão',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Os alunos têm o direito de se expressar livremente, desde que não prejudiquem o andamento das atividades acadêmicas ou desrespeitem a legislação vigente.',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                '4. Direito à segurança e bem-estar',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Os alunos têm o direito de frequentar um ambiente seguro e saudável, com medidas preventivas de segurança e ações de promoção da saúde e do bem-estar.',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
              Text(
                '5. Direito à acessibilidade',
                style: theme.textTheme.titleSmall,
              ),
              const SizedBox(height: 8.0),
              Text(
                'Todo aluno com deficiência ou necessidades especiais tem o direito de ter acesso a recursos e serviços que garantam sua participação e inclusão plena na vida acadêmica da universidade.',
                style: theme.textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
