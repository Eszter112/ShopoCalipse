import 'package:flutter/material.dart';
// import '../services/api_product.dart';
import '../models/product.dart';

class ItemAddDelete with ChangeNotifier {
  List<Product> lst = [];

  add({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required int stock,
    required String brand,
    required String thumbnail,
  }) {
    lst.add(
      Product(
        id: id,
        title: title,
        description: description,
        category: category,
        price: price,
        discountPercentage: discountPercentage,
        stock: stock,
        brand: brand,
        thumbnail: thumbnail,
      ),
    );
    notifyListeners();
  }

  del(int index) {
    lst.removeAt(index);
    notifyListeners();
  }
}
