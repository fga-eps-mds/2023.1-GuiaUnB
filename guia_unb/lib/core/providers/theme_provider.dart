import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = AppTheme.lightTheme();

  ThemeData get selectedTheme => _selectedTheme;

  set selectedTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }
}
