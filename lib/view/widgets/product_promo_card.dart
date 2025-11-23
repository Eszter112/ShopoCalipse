import 'package:flutter/material.dart';

// copie exacte de buildCard
Widget buildCard(String title) => Container(
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
      Text(
        title,
        style: const TextStyle(
          fontSize: 25, 
          color: Colors.white, 
          fontWeight: FontWeight.bold
          ),
      ),
      const SizedBox(height: 40),
    ],
  ),
);

// copie exacte de buildCardChildren
Widget buildCardChildren(String title) => Container(
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
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),

                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),

                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),

                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
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

// copie exacte de buildCardCuatro
Widget buildCardCuatro(String title) => Container(
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
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),

                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                    ),

                  Expanded(
                    child:
                  Container(
                    margin:
                  const EdgeInsets.all(4), 
                  decoration: 
                  BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(10),
                    ),
                    ),
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