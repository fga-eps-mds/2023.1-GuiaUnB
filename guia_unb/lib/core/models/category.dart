import 'doubt.dart';

class Category {
  final String title;
  final String description;
  final List<Doubt> doubts;

  Category({
    required this.title,
    required this.description,
    required this.doubts,
  });
}
