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
            itemCount: 5,
            itemBuilder: (_, __) => InkWell(
              onTap: () {},
              child: ListTile(
                isThreeLine: true,
                leading: Icon(Icons.book),
                title: Text(
                  "Revisão de notas",
                  style: theme.textTheme.labelMedium,
                ),
                subtitle: Text("Como solicitar revisão de notas",
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.6),
                    )),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        )
      ],
    );
  }
}
