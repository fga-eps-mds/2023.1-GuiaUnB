import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/custom_appbar.dart';
import 'package:guia_unb/core/util/color.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'guiaunb.contato@gmail.com',
      queryParameters: {
        'subject': 'Reportar Bug',
        'body': await _getDeviceInfo()
      },
    );
    try {
      await launchUrl(emailUri);
      debugPrint(emailUri.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<String> _getDeviceInfo() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appVersion = packageInfo.version;

    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      return 'Versão do aplicativo: $appVersion'
          '\n\nInformações do dispositivo:'
          '\n- Marca: ${androidInfo.brand}'
          '\n- Modelo: ${androidInfo.model}'
          '\n- Versão do Android: ${androidInfo.version.release}'
          '\n\n Informe o bug encontrado:';
    } else if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      return 'Versão do aplicativo: $appVersion'
          '\n\nInformações do dispositivo:'
          '\n- Marca: Apple'
          '\n- Modelo: ${iosInfo.model}'
          '\n- Versão do iOS: ${iosInfo.systemVersion}'
          '\n\n Informe o bug encontrado:';
    }
    return 'Versão do aplicativo: $appVersion';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Sobre o Guia UnB',
        subtitle: 'Informações sobre o aplicativo',
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: theme.textTheme.labelMedium?.copyWith(
                        fontSize: 18,
                        color: theme.colorScheme.onSurface.withOpacity(0.8),
                      ),
                      children: const [
                        TextSpan(
                          text: 'Bem-vindo ao GuiaUnb',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text:
                                ', o seu companheiro digital para explorar a Universidade de Brasília (UnB) de forma fácil e prática! Nosso aplicativo foi desenvolvido para fornecer a estudantes, docentes, funcionários e visitantes todas as informações necessárias sobre a UnB em um único lugar.\n\n'),
                        TextSpan(
                          text:
                              'Na UnB, sabemos que a vida universitária é repleta de desafios e descobertas.',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text:
                                ' Queremos tornar essa jornada mais tranquila, fornecendo uma plataforma abrangente que ofereça acesso rápido e fácil a informações relevantes sobre os campi, cursos, eventos, serviços e muito mais.\n\n'),
                        TextSpan(
                          text: 'Com o GuiaUnb, você pode:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextSpan(
                          text: '\n\nExplorar os Campi:\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Descubra os diferentes campi da UnB e encontre informações detalhadas sobre cada um deles. Saiba onde estão localizados os prédios acadêmicos, bibliotecas, restaurantes, estacionamentos e outros pontos de interesse.\n\n',
                        ),
                        TextSpan(
                          text: 'Encontrar Cursos:\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Obtenha informações completas sobre os cursos oferecidos pela UnB.',
                        ),
                        TextSpan(
                            text:
                                'Consulte ementas, grade curricular, corpo docente e outras informações relevantes para ajudá-lo a tomar decisões informadas sobre a sua trajetória acadêmica.\n\n'),
                        TextSpan(
                          text: 'Ficar por Dentro dos Eventos:\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Esteja sempre atualizado sobre os eventos ocorrendo na UnB.',
                        ),
                        TextSpan(
                            text:
                                ' Desde palestras e conferências até atividades culturais e esportivas, o GuiaUnb mantém você informado para que você não perca nada.\n\n'),
                        TextSpan(
                          text: 'Acessar Serviços e Recursos:\n',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              'Descubra os serviços e recursos disponíveis na UnB, como bibliotecas, laboratórios, centros de atendimento ao estudante, entre outros.',
                        ),
                        TextSpan(
                            text:
                                ' Encontre as informações de contato e horários de funcionamento para facilitar o acesso a esses serviços.\n\n'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60), // Aumente o espaçamento aqui
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: theme.colorScheme.tertiary,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                label: Text(
                  'Reportar Bug',
                  style: theme.textTheme.labelMedium
                      ?.copyWith(color: AppColors.labelWhite),
                ),
                icon: const Icon(Icons.bug_report_rounded,
                    color: AppColors.labelWhite),
                onPressed: _sendEmail,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
