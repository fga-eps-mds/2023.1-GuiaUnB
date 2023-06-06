import 'package:flutter/material.dart';
import 'package:guia_unb/core/service/database_interface.dart';

import '../models/category.dart';

class LoadData with ChangeNotifier {
  List<Category> _categories = [];

  List<Category> get data => _categories;

  Future<void> loadData() async {
    _categories = await IDatabase().getData();
    notifyListeners();
  }
}
