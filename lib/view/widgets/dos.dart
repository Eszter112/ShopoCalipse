import 'package:flutter/material.dart';
import 'card_backcolor.dart';
import 'package:shopocalipse/models/product.dart';

Widget dos(Product product) => Container(
  //  final product = provider.products.first;
  width: 350,
  height: 500,
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        const Color.fromARGB(255, 216, 176, 115),
        const Color.fromARGB(255, 68, 41, 5),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        product.title,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "${product.price} €",
        style: const TextStyle(fontSize: 20, color: Colors.white70),
      ),
      // Text("${product.price}"),
      // Text("${price.toStringAsFixed(2)} €"),
      const SizedBox(height: 40),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(child: CardWithBackColor(title: "", productId: 7)),

                  Expanded(child: CardWithBackColor(title: "", productId: 8)),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
