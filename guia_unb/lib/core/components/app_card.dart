import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';

class AppCard extends StatelessWidget {
  const AppCard({
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

    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            width: 170,
            height: MediaQuery.of(context).size.height * 0.18,
            child: Card(
              child: Center(
                child: Icon(
                  icon,
                  size: 80,
                  color: AppColors.icon,
                ),
              ),
            ),
          ),
          SizedBox(
              width: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: theme.textTheme.labelMedium?.copyWith(fontSize: 18)),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
