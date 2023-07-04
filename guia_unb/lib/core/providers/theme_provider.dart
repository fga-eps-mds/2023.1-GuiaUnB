import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = AppTheme.lightTheme;
  final String _themeKey = 'selected_theme';

  ThemeData get selectedTheme => _selectedTheme;

  ThemeProvider() {
    _loadSelectedTheme();
  }

  Future<void> toggleTheme() async {
    _selectedTheme = _selectedTheme.brightness == Brightness.dark
        ? AppTheme.lightTheme
        : AppTheme.darkTheme;
    notifyListeners();
    await _saveSelectedTheme();
  }

  Future<void> _loadSelectedTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeName = prefs.getString(_themeKey);
    if (themeName != null) {
      _selectedTheme =
          themeName == 'dark' ? AppTheme.darkTheme : AppTheme.lightTheme;
      notifyListeners();
    }
  }

  Future<void> _saveSelectedTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeName = _selectedTheme == AppTheme.darkTheme ? 'dark' : 'light';
    await prefs.setString(_themeKey, themeName);
  }
}
