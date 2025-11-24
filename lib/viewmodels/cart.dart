import 'package:flutter/material.dart';
import '../models/product.dart';

class CartCVM with ChangeNotifier {
  final List<Product> items = [];

  void addProduct(Product product) {
    items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    items.remove(product);
    notifyListeners();
  }

  void clear() {
    items.clear();
    notifyListeners();
  }
}
