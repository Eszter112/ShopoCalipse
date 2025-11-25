import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
// import '../models/product.dart';
import '../viewmodels/product_provider.dart';
import 'description_produit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navbar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<ProductProvider>(context, listen: false).loadProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarW(),

      // Consumer ecoute le ProductProvider.
      // a chaque changement => chargement fini, liste mise à jour....
      // il reconstruit l’UI automatiquement
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            //si isLoading  est vrai, ça veut dire que les produits sont en train de charger.
            // alors on montre un cercle de chargement :)
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.products.isEmpty) {
            //si la liste est vide =>
            return const Center(child: Text("Aucun produit disponible"));
          }

          //sinon, on a des produits et  on les affiche dans une liste
          return ListView.builder(
            itemCount: provider.products.length,

            //nombre d'elements dans la liste = nombre de produits.
            itemBuilder: (context, index) {
              final product = provider.products[index];
              // on prend le produit à la position index

              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Description(product: product),
                    ),
                  );
                },
                child: ListTile(
                  leading: Image.network(product.thumbnail, width: 50),

                  title: Text(product.title),

                  subtitle: Text("${product.price} €"),

                  // trailing: IconButton(
                  //   icon: const Icon(Icons.add_shopping_cart),

                  //   onPressed: () {},
                  // ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
