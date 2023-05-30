class Doubt {
  String title;
  String description;
  String body;

  Doubt({
    required this.title,
    required this.description,
    required this.body,
  });

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "description": description,
      "body": body,
    };
  }

  fromMap(Map<String, dynamic> map) {
    title = map["title"];
    description = map["description"];
    body = map["body"];
  }
}
