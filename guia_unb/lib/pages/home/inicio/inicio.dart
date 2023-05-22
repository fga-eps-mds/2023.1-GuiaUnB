import 'package:flutter/material.dart';
import 'package:guia_unb/pages/home/dicas/tips_content.dart';

import '../../../core/components/app_card.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mockData = TipsContent.estudo;
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.34,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: mockData.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, index) => AppCard(
              title: mockData[index]["title"],
              description: mockData[index]["description"],
              icon: mockData[index]["icon"],
            ),
          ),
        ),
        const Divider(),
        Row(
          children: [
            const SizedBox(width: 15),
            Text(
              "Dúvidas Discplinares",
              style: theme.textTheme.labelMedium,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: Text("Ver todos", style: theme.textTheme.bodySmall),
            ),
            const SizedBox(width: 15),
          ],
        ),
        const Divider(),
        SizedBox(
          height: screenSize.height * 0.38,
          child: ListView.builder(
            itemCount: mockData.length,
            itemBuilder: (_, index) => InkWell(
              onTap: () {},
              child: Column(
                children: [
                  ListTile(
                    isThreeLine: true,
                    leading: const Icon(Icons.book),
                    title: Text(
                      mockData[index]["title"],
                      style: theme.textTheme.labelMedium,
                    ),
                    subtitle: Text(mockData[index]["subtitle"],
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        )),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  const Divider()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
