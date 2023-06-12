import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/custom_appbar.dart';

import '../../../core/util/color.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Configurações',
        subtitle: 'Configurações do aplicativo',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 60.0),
        child: Card(
          color: AppColors.lightBlue,
          child: Center(
            child: Text('Configurações'),
          ),
        ),
      ),
    );
  }
}
