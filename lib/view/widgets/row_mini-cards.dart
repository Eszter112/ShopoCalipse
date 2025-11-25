
import 'package:flutter/material.dart';


Widget rowMiniCards(String title) =>

            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          // const Color.fromARGB(255, 216, 176, 115),
                          const Color.fromARGB(255, 68, 41, 5),
                          const Color.fromARGB(255, 216, 176, 115),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
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
            );

