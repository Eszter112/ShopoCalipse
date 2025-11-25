import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/bottom_navbar.dart';
import 'package:shopocalipse/view/widgets/card_with_products.dart';
import '../viewmodels/product_provider.dart';
import 'description_produit.dart';
import 'package:shopocalipse/view/widgets/cuatro_images_widgets.dart';
import 'package:shopocalipse/view/widgets/cinq_images_widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopocalipse/view/widgets/row_mini-cards.dart';
import 'package:shopocalipse/view/widgets/cuatro_widget.dart';
import 'package:shopocalipse/view/widgets/dos.dart';
import 'package:shopocalipse/view/widgets/small_list_widget.dart';

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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(margin: const EdgeInsets.only(top: 10)),

            SizedBox(
              height: 500,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  const SizedBox(width: 12),
                  CardWithProduct(title: "Ventes Flash stars", productId: 22),
                  const SizedBox(width: 12),
                  buildCardOffres("Offres sur les Beauty Shopocalipse"),
                  const SizedBox(width: 12),
                  CardWithProduct(title: "Groceries", productId: 16),
                  const SizedBox(width: 12),
                  CardWithProduct(title: "Les nouveautés", productId: 10),
                  const SizedBox(width: 12),
                  buildCardFragrances("Fragances"),
                  const SizedBox(width: 12),
                  CardWithProduct(
                    title: "A vos marques, prets, économisez.",
                    productId: 3,
                  ),
                  const SizedBox(width: 12),
                  buildCardQuotidien("Furnitures du Quotidien"),
                ],
              ),
            ),

            Container(child: rowMiniCards("")),

            const SizedBox(height: 20),

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

            const SmallListWidget(),

            Container(child: cuatroWidget("")),

            Container(child: rowMiniCards("")),

            SizedBox(height: 20),

            CardWithProduct(title: "il ne faut rien oubli", productId: 29,),

            SizedBox(height: 20),

            Container(child: cuatroWidget("")),

            SizedBox(height: 20),

            Container(child:rowMiniCards(""),),

            SizedBox(height: 20),

            const SmallListWidget(),

            Container(child:rowMiniCards(""),),

            SizedBox(height: 20),

            // Container(child: dos(""),)
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
