import 'package:flutter/material.dart';
import 'package:shopocalipse/view/widgets/cuatro_images_widgets.dart';
import 'package:shopocalipse/view/widgets/card_with_products.dart';


Widget cuatroImagesFragances(String title) => Container(
  width: 300,
  height: 500,
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, 
      style: const TextStyle(
        fontSize: 25, 
        color: Colors.white, 
        fontWeight: FontWeight.bold
        ),
        ),
      const SizedBox(height: 40),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId:7),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 8),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 9),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 10),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget cuatroImagesGroceries(String title) => Container(
  width: 300,
  height: 500,
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, 
      style: const TextStyle(
        fontSize: 25, 
        color: Colors.white, 
        fontWeight: FontWeight.bold
        ),
        ),
      const SizedBox(height: 40),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 16),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 17),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 18),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 19),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget cuatroImagesBeauty(String title) => Container(
  width: 300,
  height: 500,
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, 
      style: const TextStyle(
        fontSize: 25, 
        color: Colors.white, 
        fontWeight: FontWeight.bold
        ),
        ),
      const SizedBox(height: 40),
      Expanded(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 3),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 5),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 1),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),

                  Expanded(
                    child:
                    CardWithProduct(title:"", productId: 2),
                  // Container(
                  //   margin:
                  // const EdgeInsets.all(4), 
                  // decoration: 
                  // BoxDecoration(
                  //   color: Colors.white, 
                  //   borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);