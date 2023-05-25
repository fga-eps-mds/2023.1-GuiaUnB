import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'database_interface.dart';

class DatabaseFirebase implements IDatabase {
  @override
  Future<List<Map<String, dynamic>>> getData(String table) async {
    final store = FirebaseFirestore.instance;
    try {
      QuerySnapshot querySnapshot = await store.collection(table).get();
      List<Map<String, dynamic>> data = querySnapshot.docs
          .map((doc) => doc.data())
          .cast<Map<String, dynamic>>()
          .toList();
      return data;
    } catch (e) {
      if (kDebugMode) {
        print('Erro ao pegar dados: $e');
      }
      return []; // ou null, dependendo do que você deseja retornar em caso de erro
    }
  }
}
