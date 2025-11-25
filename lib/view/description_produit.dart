import 'package:flutter/material.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import '../models/product.dart';
import 'package:add_to_cart_button/add_to_cart_button.dart';
import 'package:shopocalipse/viewmodels/cart.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cart.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartCVM>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHOPOCALYPSE"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
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
            Text(
              '${(product.price / (1 - product.discountPercentage / 100)).toStringAsFixed(2)} €',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            SizedBox(height: 50),

            ElevatedButton(
              onPressed: () {
                cart.addProduct(product);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Vous avez ajouté au panier ${product.title} ",
                    ),
                  ),
                );
              },
              child: const Text('Ajouter au panier'),
            ),
            const SizedBox(height: 100),
            // Expanded(
            //   child: Consumer<CartCVM>(
            //     builder: (context, cart, child) {
            //       return ListView.builder(
            //         itemCount: cart.items.length,
            //         itemBuilder: (context, index) {
            //           final item = context.watch<CartCVM>().items[index];
            //           return ListTile(
            //             title: Text(item.title),
            //             subtitle: Text("${item.price} €"),
            //             trailing: IconButton(
            //               icon: const Icon(Icons.delete),
            //               onPressed: () => context.read<CartCVM>().remove(item),
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
