import 'package:flutter/material.dart';

import '../../../core/util/color.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(75),
        child: AppBar(
          toolbarHeight: 120,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Configurações",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
              ),
              Text(
                "Configurações do aplicativo",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.8),
                      fontSize: 16,
                    ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 200.0, horizontal: 60.0),
        child: Card(
          color: AppColors.lightBlue,
          child: Center(
            child: Text("Configurações"),
          ),
        ),
      ),
    );
  }
}
