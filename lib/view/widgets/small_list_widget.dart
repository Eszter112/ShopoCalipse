import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopocalipse/viewmodels/product_provider.dart';
import 'package:shopocalipse/view/description_produit.dart';


class SmallListWidget extends StatelessWidget {
  final double height;


const SmallListWidget({Key? key, this.height = 120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
              builder: (context, provider, _) {
                if (provider.isLoading) {
                  return const SizedBox(
                    height: 8,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                if (provider.products.isEmpty) {
                  return const SizedBox(
                    height: 8,
                    child: Center(child: Text("Aucun produit disponible")),
                  );
                }

                return SizedBox(
                  height: height,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(horizontal: 12),

                    separatorBuilder: (_, __) => const SizedBox(width: 12),

                    itemCount: provider.products.length,
                    itemBuilder: (context, index) {
                      final p = provider.products[index];

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Description(product: p),
                                ),
                              );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
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
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                  ),
                                ],
                              ),

                              child: Image.network(
                                p.thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(height: 2),
                          // Text(p.title , style: TextStyle(backgroundColor: Colors.white),textAlign: TextAlign.center,),
                          Text("${p.price} €"),
                        ],
                      );
                    },
                  ),
                );
              },
            );




  }
}