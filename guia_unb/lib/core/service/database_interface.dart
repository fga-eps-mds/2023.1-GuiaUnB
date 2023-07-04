import '../models/category.dart';
import 'db_firebase.dart';

abstract class IDatabase {
  Future<List<Category>> getData();

  factory IDatabase() => DatabaseFirebase();
}
