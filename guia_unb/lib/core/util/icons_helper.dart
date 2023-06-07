import 'package:flutter/material.dart';

class IconsHelper {
  static IconData getIconFromString(String iconName) {
    final Map<String, IconData> iconsMap = {
      'home': Icons.home,
      'horario': Icons.access_alarms,
      'money': Icons.attach_money_rounded,
      'settings': Icons.settings,
    };

    return iconsMap[iconName] ?? Icons.error;
  }
}
