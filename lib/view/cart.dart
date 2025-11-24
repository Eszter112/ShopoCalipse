import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cart.dart';
import 'description_produit.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartCVM>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Panier"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final product = cart.items[index];
          return
          // ListTile(
          //   title: Text(product.title),
          //   subtitle: Text("${product.price} €"),
          //   trailing: IconButton(
          //     icon: const Icon(Icons.add),
          //     onPressed: () => cart.add(product),
          //   ),
          // ),
          ListTile(
            title: Text(product.title),
            subtitle: Text("${product.price} €"),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => cart.remove(product),
            ),
          );
        },
      ),
    );
  }
}
