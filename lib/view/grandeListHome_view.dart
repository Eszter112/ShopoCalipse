import 'package:flutter/material.dart';

class GrandeList extends StatelessWidget {
  const GrandeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHOPOCALIPSE"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Container(
        height: 500,

        child: ListView(
          scrollDirection: Axis.horizontal,

          children: [
            buildCard("Ventes Flash stars"),
            const SizedBox(width: 12),
            buildCardChildren("Offres sur les appaeils Amazon"),
            const SizedBox(width: 12),
            buildCard("-35% et plus"),
            const SizedBox(width: 12),
            buildCard("Jouets"),
            const SizedBox(width: 12),
            buildCard("Les nouveautés"),
            const SizedBox(width: 12),
            buildCard("Les favoris !"),
            const SizedBox(width: 12),
            buildCardChildren("informatique"),
            const SizedBox(width: 12),
            buildCard("A vos marques, prets, économisez."),
            const SizedBox(width: 12),
            buildCard(" Favoris à moins de 50£"),
            const SizedBox(width: 12),
            buildCardChildren("Produits du Quotidien"),
          ],
        ),
      ),
    );
  }

  Widget buildCardChildren(String title) => 
  
  Container(
    width: 300,
    height: 500,
    color: Colors.red,
    
    padding: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          title,
          style: TextStyle(
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
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        color: Colors.white,
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        color: Colors.white,
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

 Widget buildCard(String title) => Container(
    width: 300,
    height: 500,
    color: Colors.red,
    padding: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40),
],
    ),
    );



}
