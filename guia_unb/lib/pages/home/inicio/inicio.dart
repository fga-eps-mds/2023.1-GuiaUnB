import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            itemCount: 10,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (_, index) => const Card(
              color: Colors.blue,
              child: Text("data"),
            ),
          ),
        ),
        const Divider(),
        Container(
          child: Row(
            children: [
              const SizedBox(width: 15),
              Text(
                "Dúvidas Discplinares",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text("Ver todos",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
