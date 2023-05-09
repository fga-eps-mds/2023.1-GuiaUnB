import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(icon, size: 30),
            title: Text(
              title,
              style: theme.textTheme.titleMedium,
            ),
            subtitle: Text(
              subtitle,
              style: theme.textTheme.labelMedium,
            ),
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}
