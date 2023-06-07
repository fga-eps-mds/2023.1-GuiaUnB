import 'package:flutter/material.dart';

class Doubt {
  String title;
  String description;
  String body;
  IconData icon;

  Doubt({
    required this.title,
    required this.description,
    required this.body,
    required this.icon,
  });

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
      "body": body,
      "icon": icon.codePoint,
    };
  }

  static Doubt fromMap(Map<String, dynamic> map) {
    return Doubt(
      title: map["title"],
      description: map["description"],
      body: map["body"],
      icon: IconData(map["icon"]),
    );
  }
}
