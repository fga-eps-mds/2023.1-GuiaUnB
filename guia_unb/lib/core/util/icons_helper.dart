import 'package:flutter/material.dart';

class IconsHelper {
  static IconData getIconFromString(String iconName) {
    final Map<String, IconData> iconsMap = {
      'home': Icons.home,
      'access_alarms': Icons.access_alarms,
      'money': Icons.attach_money_rounded,
      'wifi_rounded': Icons.wifi_rounded,
      'question_answer': Icons.question_answer,
      'health_and_safety': Icons.health_and_safety,
      'watch_later_rounded': Icons.watch_later_rounded,
      'wallet': Icons.wallet,
      'wallet_rounded': Icons.wallet_rounded,
      'sports_basketball_rounded': Icons.sports_basketball_rounded,
      'fastfood_rounded': Icons.fastfood_rounded,
      'web': Icons.web,
      'change_circle_rounded': Icons.change_circle_rounded,
      'subject': Icons.subject,
      'cases_rounded': Icons.cases_rounded,
      'clear_rounded': Icons.clear_rounded,
      'privacy_tip_sharp': Icons.privacy_tip_sharp,
      'apartment': Icons.apartment,
      'search_rounded': Icons.search_rounded,
      'remove_circle_outline_rounded': Icons.remove_circle_outline_rounded,
      'psychology_alt_rounded': Icons.psychology_alt_rounded,
      'my_library_books_rounded': Icons.my_library_books_rounded,
      'house_rounded': Icons.house_rounded,
      'sports_kabaddi_sharp': Icons.sports_kabaddi_sharp,
      'map_rounded': Icons.map_rounded,
    };

    return iconsMap[iconName] ?? Icons.error;
  }
}
