class Promotion {
  String description;
  String id;
  String name;
  String thumbnail;
  int price;
  bool isHot;

  Promotion({
    required this.description,
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.price,
    required this.isHot,
  });

  factory Promotion.fromjson(Map<String, dynamic> jsonObject) {
    return Promotion(
      description: jsonObject['description'],
      id: jsonObject['id'],
      name: jsonObject['name'],
      thumbnail:
          'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      price: jsonObject['price'],
      isHot: jsonObject['is_hot'],
    );
  }
}
