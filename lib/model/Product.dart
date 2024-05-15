
class Product {
  final String title;
  final int price;
  final String image;
  final String type;

  Product({required this.title, required this.price, required this.image, required this.type});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'],
      image: json['image'],
      type: json['type'],
    );
  }
}
