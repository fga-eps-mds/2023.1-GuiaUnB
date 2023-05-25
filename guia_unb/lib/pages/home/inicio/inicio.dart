import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/components/app_card.dart';
import '../../../core/providers/load_data.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final data = Provider.of<LoadData>(context).data;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.365,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              itemCount: data.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (_, index) => AppCard(
                title: data[index]["title"],
                description: data[index]["description"],
                icon: Icons.ac_unit,
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
            height: screenSize.height * 0.34,
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, index) => InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    ListTile(
                      isThreeLine: true,
                      leading: const Icon(Icons.book),
                      title: Text(
                        data[index]["title"],
                        style: theme.textTheme.labelMedium,
                      ),
                      subtitle: Text(data[index]["description"],
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
      ),
    );
  }
}
