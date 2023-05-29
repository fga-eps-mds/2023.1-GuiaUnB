import 'package:flutter/material.dart';
import 'package:guia_unb/pages/home/configuracoes/settings.dart';
import 'package:guia_unb/pages/home/inicio/inicio.dart';
import 'package:guia_unb/pages/home/sobre/sobre.dart';

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

  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return const InitialPage();
      case 1:
        return const AboutPage();
      case 2:
        return const SettingsPage();
      default:
        return const InitialPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-2, 0),
              end: const Offset(0, 0),
            ).animate(animation),
            child: child,
          );
        },
        child: _getSelectedPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        fixedColor: Theme.of(context).colorScheme.tertiary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Sobre',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
