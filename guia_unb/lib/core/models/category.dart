import 'package:flutter/material.dart';
import 'doubt.dart';

class Category {
  final String title;
  final String description;
  final IconData icon;
  final List<Doubt> doubts;

  Category({
    required this.title,
    required this.description,
    required this.icon,
    required this.doubts,
  });
}
