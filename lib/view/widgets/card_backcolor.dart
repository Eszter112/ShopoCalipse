import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/product_provider.dart';
import '../description_produit.dart';

class CardWithBackColor extends StatelessWidget {
  final String title;

  final int? productId;

  const CardWithBackColor({super.key, required this.title, this.productId});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    final product = productId == null ? null : provider.getById(productId!);
    final thumb = product?.thumbnail;

    return Container(
      width: 300,
      height: 500,
      margin: const EdgeInsets.all(8),
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
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product?.title ?? title,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (product != null)
            Text(
              "${product.price} €",
              style: const TextStyle(fontSize: 18, color: Colors.white70),
            ),
          const SizedBox(height: 12),
          Expanded(
            child: thumb == null
                ? const Center(child: CircularProgressIndicator())
                : InkWell(
                    onTap: () {
                      if (product != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Description(product: product),
                          ),
                        );
                      }
                    },
                    child: ClipRRect(
                      // coins arrondis a une image et masque tout ce qui dépasse
                      borderRadius: BorderRadius.circular(8),
                      child: Center(
                        child: Image.network(thumb, fit: BoxFit.cover),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
