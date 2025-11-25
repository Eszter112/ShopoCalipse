import 'package:flutter/material.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import '../models/product.dart';
import 'package:add_to_cart_button/add_to_cart_button.dart';
import 'package:shopocalipse/viewmodels/cart.dart';
import 'package:provider/provider.dart';
import '../viewmodels/cart.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartCVM>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: const Text("SHOPOCALIPSE"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 216, 176, 115),
                const Color.fromARGB(255, 68, 41, 5),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),

        title: Text(
          'SHOPOCALYPSE',
          style: GoogleFonts.playfairDisplay(
            fontSize: 30,
            fontWeight: FontWeight.w400,
            color: const Color.fromARGB(255, 239, 212, 175),
            shadows: [
              Shadow(
                offset: Offset(2, 2),
                blurRadius: 6.0,
                color: Colors.black.withValues(alpha: 0.8),
              ),
              Shadow(
                offset: Offset(0, 0),
                blurRadius: 12.0,
                color: Colors.amber.shade200.withValues(alpha: 0.2),
              ),
            ],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.amber.shade300),
        // bottom: const PreferredSize(
        //   preferredSize: Size.fromHeight(64),
        //   child:  SearchBarApp(),
        // ),
      ),
// ---------------------------------------------------------------------------------------------------------------
      body: Center(
        child: 
        Column(
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
          ],
        ),


      ),

      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
