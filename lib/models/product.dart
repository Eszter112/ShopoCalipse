//model de données pour un produit

class Product {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;

  final int stock;
  final String image;
  final String brand;

  const Product({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.stock,
    required this.image,
    required this.brand,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      //num.toDouble() =>pour eviter les erreurs si l'API envoie un int
      price: (json['price'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      stock: json['stock'] as int,
      image: json['image'] as String,
      brand: json['brand'] as String,
    );
  }
}
