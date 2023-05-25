abstract class IDatabase {
  Future<List<Map<String, dynamic>>> getData(String table);
}