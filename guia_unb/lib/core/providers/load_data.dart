import 'dart:core';

import 'package:flutter/material.dart';

import '../models/category.dart';
import '../service/db_firebase.dart';

class LoadData with ChangeNotifier {
  List<Category> _categories = [];

  List<Category> get data => _categories;

  Future<void> loadData() async {
    _categories = await DatabaseFirebase().getData();
    notifyListeners();
  }
}
