import 'package:flutter/material.dart';
import 'package:shopocalipse/view/grandeListHome_view.dart';
import 'profile.dart';
import 'cart.dart';
import 'menu_page.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: pages[_currentIndex],
    //   bottomNavigationBar:
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
          icon: IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'),
            icon: Icon(Icons.shopping_cart, color: Colors.black),
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