import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import '../view/product.dart';
import '../viewmodels/product_provider.dart';

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
      title: 'SHOPOCALYPSE',
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        '/': (context) => const ProductsView(),
        // '/details':(context) =>const ProductDetailsView(),
      },
    );
  }
}
