import 'package:flutter/material.dart';
import 'package:guia_unb/pages/home/home_page.dart';
import 'package:guia_unb/pages/settings/settings_page.dart';

import 'about/about_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _MainPageState();
}

class _MainPageState extends State<InitialPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const AboutPage();
      case 2:
        return const SettingsPage();
      default:
        return const HomePage();
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
    final theme = Theme.of(context);
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: _buildPageTransition,
        child: _getSelectedPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.colorScheme.background,
        fixedColor: theme.colorScheme.tertiary,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
