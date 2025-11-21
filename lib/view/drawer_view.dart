import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context ) {
    return Drawer(
      
      child: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home, color: Colors.white),

              title: const Text(
                "Page Joao",
                style: TextStyle(color: Colors.white),
              ),

              onTap: () {
                Navigator.pop(context); // fermer le drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Joao()),
                );
              },
            ),

            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(50),

              child: Image.network(
                "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?q=80&w=1169&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              child: Text("Menu"),
              
            ),

            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              child: Text("Profil"),
            ),

            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              
            ),
            Center(
              child: ElevatedButton(
                        onPressed: (){Navigator.pushNamed(context, '/stateleswidget.dart' );
                        }, 
                        child: Text("ma route"),
                      ),
                ), 
                Center(
              child: ElevatedButton(
                        onPressed: (){Navigator.pushNamed(context, '/list.dart' );
                        }, 
                        child: Text("listeView"),
                      ),
                ), 
                  Center(
              child: ElevatedButton(
                        onPressed: (){Navigator.pushNamed(context, '/tableauscores_view.dart' );
                        }, 
                        child: Text("tableau scores"),
                      ),
                ),  

                Center(
              child: ElevatedButton(
                        onPressed: (){Navigator.pushNamed(context, '/teamplayers_api_view.dart' );
                        }, 
                        child: Text("list API"),
                      ),
                ),     
            Expanded(child: Container()),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: const Color.fromARGB(255, 44, 2, 2),
              alignment: Alignment.center,
              child: Text(
                "Deconnection",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
