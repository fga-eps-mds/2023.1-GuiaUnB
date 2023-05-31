import '../models/category.dart';

abstract class IDatabase {
  Future<List<Category>> getData();
}
