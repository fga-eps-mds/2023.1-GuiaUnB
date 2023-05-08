import 'package:flutter/material.dart';
import 'package:guia_unb/core/util/color.dart';
import 'package:guia_unb/pages/home/inicio/inicio.dart';
import 'package:guia_unb/pages/home/sobre/sobre.dart';

import 'dicas/dicas.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Guia UnB",
          style: TextStyle(color: AppColors.label, fontSize: 28),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          InitialPage(),
          TipsPage(),
          AboutPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        fixedColor: Theme.of(context).colorScheme.secondary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tips_and_updates),
            label: 'Dicas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Ajuda',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
