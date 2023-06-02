import 'package:flutter/material.dart';

import 'configuracoes/settings.dart';
import 'inicio/inicio.dart';
import 'sobre/sobre.dart';

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

  Widget _buildPageTransition(Widget child, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-2, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    );
  }

  static const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: _buildPageTransition,
        child: _getSelectedPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        fixedColor: Theme.of(context).colorScheme.tertiary,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
