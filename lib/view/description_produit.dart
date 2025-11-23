import 'package:flutter/material.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import '../models/product.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHOPOCALYPSE"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              product.title.toUpperCase(),
            ),
            Text(product.description),

            //image
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => Dialog(
                    child: Hero(
                      tag: product.id,
                      child: InteractiveViewer(
                        child: Image.network(
                          product.thumbnail,
                          height: 400,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: Hero(
                tag: product.id,
                child: Image.network(product.thumbnail, height: 200),
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.blueGrey,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              children: [
                Text(
                  "   -${product.discountPercentage}%  ",
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 192, 7, 7),
                  ),
                ),
                Text(
                  '${product.price} €',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
