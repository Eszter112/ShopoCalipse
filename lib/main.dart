import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/view/logo.dart';
import 'view/product.dart';
import 'viewmodels/product_provider.dart';
import 'view/grandeListHome_view.dart';
import 'view/logo.dart';

void main() {
  var logger = Logger();
  logger.e('Error message');

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProductProvider())],
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
        '/grandeListHome_view.dart': (BuildContext context) =>
            const GrandeList(),
        '/product.dart': (BuildContext context) => const ProductsView(),
        '/logo': (BuildContext context) => const FadeLogoScreen(),
        // '/details':(context) =>const ProductDetailsView(),
      },
    );
  }
}
