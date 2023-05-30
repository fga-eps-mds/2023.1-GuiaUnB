import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../service/db_firebase.dart';

class LoadData with ChangeNotifier {
  List<Map<String, dynamic>> _data = [];

  List<Map<String, dynamic>> get data => _data;

  Future<void> loadData() async {
    _data = await DatabaseFirebase().getData("duvidas");
    notifyListeners();
  }
}
