import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = AppTheme.lightTheme;

  ThemeData get selectedTheme => _selectedTheme;

  void toggleTheme() {
    _selectedTheme = _selectedTheme.brightness == Brightness.dark
        ? AppTheme.lightTheme
        : AppTheme.darkTheme;
    notifyListeners();
  }
}
