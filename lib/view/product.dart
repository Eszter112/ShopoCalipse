import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import '../viewmodels/product_provider.dart';
import 'description_produit.dart';

//  On cree une page qui montre les produits
class ProductsView extends StatefulWidget {
  const ProductsView({super.key}); // Constructeur avec cle

  @override
  State<ProductsView> createState() => _ProductsViewState();
  // On dit que cet ecran est Stateful il peut changer
}

class _ProductsViewState extends State<ProductsView> {
  @override
  // Cette fonction est appelee une seule fois au debut.
  // Ici on dit : des que l'ecran s’ouvre, on charge les produits depuis l'API
  void initState() {
    super.initState();

    // Provider.of permet d'acceder au ProductProvider.
    // listen: false=> veut dire : on ne veut pas ecouter les changements ici,
    // on veut juste lancer la fonction loadProducts().
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHOPOCALYPSE"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

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

                  trailing: IconButton(
                    icon: const Icon(Icons.add_shopping_cart),

                    onPressed: () {},
                  ),
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
