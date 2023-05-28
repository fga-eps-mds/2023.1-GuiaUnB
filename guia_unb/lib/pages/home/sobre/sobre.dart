import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sobre o Guia UnB",
                  style: theme.textTheme.titleMedium,
                ),
                const SizedBox(height: 20),
                Text(
                  'Bem-vindo ao GuiaUnb, o seu companheiro digital para explorar a Universidade de Brasília (UnB) de forma fácil e prática! Nosso aplicativo foi desenvolvido para fornecer a estudantes, docentes, funcionários e visitantes todas as informações necessárias sobre a UnB em um único lugar.\n\nNa UnB, sabemos que a vida universitária é repleta de desafios e descobertas. Queremos tornar essa jornada mais tranquila, fornecendo uma plataforma abrangente que ofereça acesso rápido e fácil a informações relevantes sobre os campi, cursos, eventos, serviços e muito mais.\n\nCom o GuiaUnb, você pode:\n\nExplorar os Campi: Descubra os diferentes campi da UnB e encontre informações detalhadas sobre cada um deles. Saiba onde estão localizados os prédios acadêmicos, bibliotecas, restaurantes, estacionamentos e outros pontos de interesse.\n\nNavegar pelos Cursos: Obtenha informações completas sobre os cursos oferecidos pela UnB. Consulte ementas, grade curricular, corpo docente e outras informações relevantes para ajudá-lo a tomar decisões informadas sobre a sua trajetória acadêmica.\n\nFicar por Dentro dos Eventos: Esteja sempre atualizado sobre os eventos ocorrendo na UnB. Desde palestras e conferências até atividades culturais e esportivas, o GuiaUnb mantém você informado para que você não perca nada.\n\nAcessar Serviços e Recursos: Descubra os serviços e recursos disponíveis na UnB, como bibliotecas, laboratórios, centros de atendimento ao estudante, entre outros. Encontre as informações de contato e horários de funcionamento para facilitar o acesso a esses serviços.\n\nPersonalizar sua Experiência: O GuiaUnb permite que você personalize sua experiência de acordo com seus interesses e necessidades. Adicione seus cursos favoritos, marque eventos importantes em seu calendário e receba notificações relevantes para se manter atualizado.\n\nEstamos comprometidos em fornecer uma experiência intuitiva e útil por meio do GuiaUnb. Estamos sempre abertos a sugestões e feedbacks para melhorar e aprimorar constantemente nosso aplicativo, tornando-o ainda mais valioso para toda a comunidade da UnB.\n\nEntão, vamos começar a explorar juntos a UnB! Baixe o GuiaUnb agora e aproveite todas as funcionalidades disponíveis para facilitar sua vida universitária.\n\nEquipe GuiaUnb',
                  textAlign: TextAlign.start,
                  style: theme.textTheme.labelMedium?.copyWith(
                    fontSize: 18,
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: TextButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            label: Text('Reportar Bug', style: theme.textTheme.labelMedium),
            icon: const Icon(Icons.error_outline, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
