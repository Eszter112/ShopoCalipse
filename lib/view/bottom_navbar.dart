import 'package:flutter/material.dart';
import 'package:shopocalipse/view/grandeListHome_view.dart';
import 'profile.dart';
import 'cart.dart';
import 'menu_page.dart';
//pour afficher items sur panier icon
import 'package:badges/badges.dart' as badges;
import 'package:provider/provider.dart';
import 'package:shopocalipse/viewmodels/cart.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      // onTap: setCurrantIndex,
      selectedItemColor: const Color.fromARGB(255, 2, 52, 53),
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.deepOrangeAccent,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.pushNamed(context, '/home'),
            icon: Icon(Icons.home, color: Colors.black),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.pushNamed(context, '/profil'),
            icon: Icon(Icons.person, color: Colors.black),
            iconSize: 35,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          // Kosár ikonhoz Badge
          icon: Consumer<CartCVM>(
            builder: (context, cart, child) {
              return badges.Badge(
                badgeContent: Text(
                  cart.itemCount.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                child: IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/cart'),
                  icon: const Icon(Icons.shopping_cart, color: Colors.black),
                ),
              );
            },
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            onPressed: () => Navigator.pushNamed(context, '/menu'),
            icon: Icon(Icons.menu, color: Colors.black),
          ),
          label: "",
        ),
      ],
      // ),
    );
  }
}