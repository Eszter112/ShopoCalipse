import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cart.dart';
import 'description_produit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarW(),
      body: Consumer<CartCVM>(
        builder: (context, cart, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    final item = cart.items[index];
                    return ListTile(
                      title: Text(item.title),
                      subtitle: Text("${item.price} €"),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => cart.remove(item),
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Total article : ${cart.itemCount}",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "Total : ${cart.totalPrice.toStringAsFixed(2)} €",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              // btn vider panier
              ElevatedButton(
                onPressed: () => cart.clear(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 247, 200, 143),
                ),

                child: const Text(
                  "Vider le panier",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 100),
            ],
          );
        },
      ),
    );
  }
}
