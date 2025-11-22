import 'package:flutter/material.dart';
import 'view/grandeListHome_view.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: const GrandeList(),

routes: {
  
'/grandeListHome_view.dart' : (BuildContext context) => const GrandeList() ,

}
    );
  }
}