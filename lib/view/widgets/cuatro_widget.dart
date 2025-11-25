import 'package:flutter/material.dart';
import 'package:shopocalipse/view/widgets/cuatro_images_widgets.dart';

Widget cuatroWidget(String title) =>


  SizedBox(
              height: 450,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: [
                  const SizedBox(width: 12),
                  cuatroImagesFragances("Fragrances"),
                  const SizedBox(width: 12),
                  cuatroImagesGroceries("Groceries"),
                  const SizedBox(width: 12),
                  cuatroImagesBeauty("Beauty"),
                  const SizedBox(width: 12),
                ],
              ),
            );