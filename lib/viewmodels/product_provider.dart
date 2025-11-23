import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_product.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class ProductProvider with ChangeNotifier {
  //liste de produit
  List<Product> products = [];

  //variable pour savoir si c'est charge
  bool isLoading = false;

  //function pour charger les produits
  Future<void> loadProducts() async {
    //on dit que ca charge
    isLoading = true;

    notifyListeners();

    //on demande les produits a l'API
    try {
      products = await fetchProduct();
      logger.i("ok");
    } catch (e, s) {
      logger.e("Erreur lors du fetch", error: e, stackTrace: s);
    }

    //on dit que chargement est fini
    isLoading = false;

    //onprevient l'UI => montrer la liste
    notifyListeners();
  }

// recuperer un article par id
Product? getById(int id) {
  try {
    return products.firstWhere((p) => p.id == id);
  } catch (_) {
    return null;
  }
  }

}
