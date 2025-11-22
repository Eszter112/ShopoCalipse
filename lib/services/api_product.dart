import 'dart:convert';
import '../models/product.dart';
import 'package:http/http.dart' as http;

//recuperer les produits depuis API

Future<List<Product>> fetchProduct() async {
  final response = await http.get(Uri.parse('https://dummyjson.com/products'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final productJson = data['products'] as List;
    return productJson.map((p) => Product.fromJson(p)).toList();
  } else {
    throw Exception('Échec du chargement des produits');
  }
}
