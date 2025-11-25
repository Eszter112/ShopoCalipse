import 'package:flutter/material.dart';
import 'package:shopocalipse/view/widgets/card_with_products.dart';
import 'package:shopocalipse/view/widgets/card_backcolor.dart';

Widget buildCardOffres(String title) => Container(
  width: 300,
  height: 500,
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
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
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
                    child: CardWithBackColor(title: "", productId: 1),
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
                    child: CardWithBackColor(title: "", productId: 2),
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
                    child: CardWithBackColor(title: "", productId: 3),
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
                    child: CardWithBackColor(title: "", productId: 4),
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
                    child: CardWithBackColor(title: "", productId: 5),
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

Widget buildCardFragrances(String title) => Container(
  width: 300,
  height: 500,
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
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
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
                    child: CardWithBackColor(title: "", productId: 7),
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
                    child: CardWithBackColor(title: "", productId: 8),
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
                    child: CardWithBackColor(title: "", productId: 9),
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
                    child: CardWithBackColor(title: "", productId: 10),
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
                    child: CardWithBackColor(title: "", productId: 11),
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

Widget buildCardQuotidien(String title) => Container(
  width: 300,
  height: 500,
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
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
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
                    child: CardWithBackColor(title: "", productId: 11),
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
                    child: CardWithBackColor(title: "", productId: 12),
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
                    child: CardWithBackColor(title: "", productId: 13),
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
                    child: CardWithBackColor(title: "", productId: 14),
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
                    child: CardWithBackColor(title: "", productId: 15),
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
