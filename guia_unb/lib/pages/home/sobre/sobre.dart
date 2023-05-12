import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Text(
                    "Por quê usar o Guia UnB?",
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "O Guia UnB é um aplicativo que tem como objetivo facilitar a vida dos alunos da Universidade de Brasília. Com ele, você pode encontrar informações sobre os cursos, disciplinas, professores e salas de aula da UnB.\n"
                    "Além disso, você pode encontrar informações sobre os restaurantes universitários, bibliotecas, centros acadêmicos e muito mais!",
                    style: theme.textTheme.labelMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
