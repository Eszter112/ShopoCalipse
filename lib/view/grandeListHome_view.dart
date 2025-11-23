import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import '../viewmodels/product_provider.dart';
import 'widgets/product_promo_card.dart';
// import 'package:shopocalipse/view/product.dart';
import 'description_produit.dart';

class GrandeList extends StatefulWidget {
  const GrandeList({super.key});

  @override
  State<GrandeList> createState() => _GrandeListState();
}

class _GrandeListState extends State<GrandeList> {
  @override
  void initState() {
    super.initState();
    // charge les produits au démarrage (une seule fois)
    Future.microtask(() {
      Provider.of<ProductProvider>(context, listen: false).loadProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SHOPOCALIPSE"),
        backgroundColor: const Color.fromARGB(239, 155, 23, 76),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: const EdgeInsets.only(top: 10)),
            // tes cartes promo (inchangées, appels aux fonctions conservés)
            SizedBox(
              height: 500,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  const SizedBox(width: 12),
                  buildCard("Ventes Flash stars"),
                  const SizedBox(width: 12),
                  buildCardChildren("Offres sur les Beauty Shopocalipse"),
                  const SizedBox(width: 12),
                  buildCard("-35% et plus"),
                  const SizedBox(width: 12),
                  buildCard("Groceries"),
                  const SizedBox(width: 12),
                  buildCard("Les nouveautés"),
                  const SizedBox(width: 12),
                  buildCard("Les favoris !"),
                  const SizedBox(width: 12),
                  buildCardChildren("Fragances"),
                  const SizedBox(width: 12),
                  buildCard("A vos marques, prets, économisez."),
                  const SizedBox(width: 12),
                  buildCard(" Favoris à moins de 50£"),
                  const SizedBox(width: 12),
                  buildCardChildren("Furnitures du Quotidien"),
                ],
              ),
            ),

            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange.shade800,
                    height: 50,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Black Friday Week aura lieu\n du 20 novembre au 1er décembre",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 0.85,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Section Produits API simple pour débutant (utilise Provider)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Des cadeaux pour tout le monde",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            Consumer<ProductProvider>(
              builder: (context, provider, _) {
                if (provider.isLoading) {
                  return const SizedBox(
                    height: 120,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (provider.products.isEmpty) {
                  return const SizedBox(
                    height: 120,
                    child: Center(child: Text("Aucun produit disponible")),
                  );
                }

                return SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemCount: provider.products.length,
                    itemBuilder: (context, index) {
                      final p = provider.products[index];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Description(product: p),
                                ),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 228, 61, 19),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),

                              child: Image.network(
                                p.thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(height: 6),
                          // Text(p.title , style: TextStyle(backgroundColor: Colors.white),textAlign: TextAlign.center,),
                          Text("${p.price} €"),
                        ],
                      );
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavbar(),
    );
  }
}



































// import 'package:flutter/material.dart';

// class GrandeList extends StatelessWidget {
//   const GrandeList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SHOPOCALIPSE"),
//         backgroundColor: Colors.deepOrangeAccent,
//         actions: [
// Center(
//               child: ElevatedButton(
//                         onPressed: (){Navigator.pushNamed(context, '/product.dart' );
//                         }, 
//                         child: Text("products"),
//                       ),
//                 ),
// ],
//       ),

//       body: Container(
//         height: 500,

//         child: ListView(
//           scrollDirection: Axis.horizontal,

//           children: [
//             buildCard("Ventes Flash stars"),
//             const SizedBox(width: 12),
//             buildCardChildren("Offres sur les appaeils Amazon"),
//             const SizedBox(width: 12),
//             buildCard("-35% et plus"),
//             const SizedBox(width: 12),
//             buildCard("Jouets"),
//             const SizedBox(width: 12),
//             buildCard("Les nouveautés"),
//             const SizedBox(width: 12),
//             buildCard("Les favoris !"),
//             const SizedBox(width: 12),
//             buildCardChildren("informatique"),
//             const SizedBox(width: 12),
//             buildCard("A vos marques, prets, économisez."),
//             const SizedBox(width: 12),
//             buildCard(" Favoris à moins de 50£"),
//             const SizedBox(width: 12),
//             buildCardChildren("Produits du Quotidien"),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildCardChildren(String title) => 
  
//   Container(
//     width: 300,
//     height: 500,
//     padding: const EdgeInsets.all(8),
//     decoration: BoxDecoration(
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(10),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [

//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 40),

//         Expanded(
//           child: Row(
//             children: [
//               Expanded(
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),

//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               Expanded(
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         margin: const EdgeInsets.all(4),
//                         decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );

// Widget buildCard(String title) => Container(
//     width: 300,
//     height: 500,
//     padding: const EdgeInsets.all(8),

//     decoration: BoxDecoration(
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(10),
//     ),
    
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         const SizedBox(height: 40),
// ],
//     ),
//     );



// }
