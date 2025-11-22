import 'dart:convert';
import '../models/product.dart';
import 'package:http/http.dart' as http;

//recuperer les produits depuis API

Future<List<Product>> fetchGProduct() async {
  final response = await http.get(Uri.parse('https://dummyjson.com/products'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final productJson = data['products'] as List;
    return productJson.map((g) => Product.fromJson(g)).toList();
  } else {
    throw Exception('Échec du chargement des produits');
  }
}
