import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/cart.dart';
import 'package:shopocalipse/view/logo.dart';
import 'package:shopocalipse/view/menu_page.dart';
import 'package:shopocalipse/view/profile.dart';
import 'package:shopocalipse/viewmodels/cart.dart';
import 'view/product.dart';
import 'viewmodels/product_provider.dart';
import 'view/grandeListHome_view.dart';
import 'view/logo.dart';
// import 'view/widgets/searchBar.dart';

void main() {
  var logger = Logger();
  logger.e('Error message');

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartCVM()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FadeLogoScreen(),
      routes: {
        '/home': (BuildContext context) => const GrandeList(),
        '/product.dart': (BuildContext context) => const ProductsView(),
        '/logo': (BuildContext context) => const FadeLogoScreen(),
        '/profil': (BuildContext context) => const Profil(),
        '/cart': (BuildContext context) => const Cart(),
        '/menu': (BuildContext context) => const MenuPage(),
        // '/details':(context) =>const ProductDetailsView(),
      },
    );
  }
}
