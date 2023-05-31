import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/category.dart';
import '../models/doubt.dart';
import 'database_interface.dart';

class DatabaseFirebase implements IDatabase {
  @override
  Future<List<Category>> getData() async {
    final QuerySnapshot categoriesSnapshot =
        await FirebaseFirestore.instance.collection('categorias').get();

    final List<Category> categories = [];

    for (final categoryDoc in categoriesSnapshot.docs) {
      final categoryData = categoryDoc.data() as Map<String, dynamic>;
      final categoryName = categoryData['title'] as String;
      final categoryDescription = categoryData['description'] as String;

      final QuerySnapshot doubtsSnapshot =
          await categoryDoc.reference.collection('duvidas').get();

      final List<Doubt> doubts = doubtsSnapshot.docs.map((doubtDoc) {
        final doubtData = doubtDoc.data() as Map<String, dynamic>;
        final doubtTitle = doubtData['title'] as String;
        final doubtDescription = doubtData['description'] as String;
        final doubtBody = doubtData['body'] as String;

        return Doubt(
            title: doubtTitle, description: doubtDescription, body: doubtBody);
      }).toList();

      final category = Category(
          title: categoryName, description: categoryDescription, doubts: doubts);
      categories.add(category);
    }
    return categories;
  }
}
