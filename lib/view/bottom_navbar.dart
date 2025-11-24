import 'package:flutter/material.dart';
import 'package:shopocalipse/view/grandeListHome_view.dart';
import 'profile.dart';
import 'cart.dart';
import 'menu_page.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  //   @override
  //   State<BottomNavbar> createState() => _BottomNavbarState();
  // }

  // class _BottomNavbarState extends State<BottomNavbar> {
  // int _selectedIndex = 0;

  // int _currentIndex = 0;

  // final List<Widget> pages = const [
  //   GrandeList(), // Home
  //   Profil(), // Profile
  //   Cart(), // Panier
  //   MenuPage(), // Menu
  // ];

  // void setCurrantIndex(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

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
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
      ],
      // ),
    );
  }
}
