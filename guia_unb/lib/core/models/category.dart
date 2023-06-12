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

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'] as String,
      description: json['description'] as String,
      icon: IconData(int.parse(json['icon'])),
      doubts: (json['doubts'] as List<dynamic>)
          .map((doubtJson) => Doubt.fromMap(doubtJson as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'icon': icon.codePoint,
      'doubts': doubts.map((doubt) => doubt.toJson()).toList(),
    };
  }
}
