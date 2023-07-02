import 'package:flutter/material.dart';

class DoubtCard extends StatelessWidget {
  const DoubtCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String description;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final limitDescription = description.length > 100
        ? '${description.substring(0, 80)}...'
        : description;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 100,
        child: ListTile(
          isThreeLine: true,
          leading: Icon(
            icon,
            size: 32,
            color: theme.colorScheme.tertiary,
          ),
          title: Text(title, style: theme.textTheme.labelMedium),
          subtitle: Text(limitDescription,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              )),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: theme.colorScheme.tertiary,
          ),
        ),
      ),
    );
  }
}
