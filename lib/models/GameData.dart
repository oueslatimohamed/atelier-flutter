class GameData {
  final String title;
  final String image;
  final String description;
  final double price;
  final int quantity;

  GameData({required this.title, required this.image, required this.description,
    required this.price, required this.quantity});

  factory GameData.fromJson(Map<String , dynamic> json) {

    return GameData(
        title: json['title'],
        image: json['image'],
        description: json['description'],
        price: json['price'].toDouble(),
        quantity: json['quantity']
      );

  }


}