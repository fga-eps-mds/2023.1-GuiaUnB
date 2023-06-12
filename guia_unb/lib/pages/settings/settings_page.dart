import 'package:flutter/material.dart';
import 'package:guia_unb/core/components/custom_appbar.dart';
import 'package:guia_unb/core/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../../core/config/routes/routes.dart';
import '../../core/providers/theme_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode =
        themeProvider.selectedTheme.brightness == Brightness.dark;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Configurações',
        subtitle: 'Configurações do aplicativo',
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Tema',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.9),
              ),
            ),
            subtitle: Text(
              'Ativar modo escuro',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            trailing: Switch(
              activeColor: theme.colorScheme.tertiary,
              value: isDarkMode,
              onChanged: (value) {
                final selectedTheme =
                    value ? AppTheme.darkTheme() : AppTheme.lightTheme();
                Provider.of<ThemeProvider>(context, listen: false)
                    .selectedTheme = selectedTheme;
              },
            ),
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Sair',
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.9),
              ),
            ),
            subtitle: Text(
              'Sair do aplicativo',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: theme.colorScheme.tertiary,
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(context, Routes.onboarding),
          ),
        ],
      ),
    );
  }
}
