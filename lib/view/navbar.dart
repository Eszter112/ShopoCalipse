import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarW extends StatelessWidget implements PreferredSizeWidget {
  const AppBarW({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      // title: const Text("SHOPOCALIPSE"),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 216, 176, 115),
              const Color.fromARGB(255, 68, 41, 5),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),

      title: Text(
        'SHOPOCALYPSE',
        style: GoogleFonts.playfairDisplay(
          fontSize: 30,
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(255, 239, 212, 175),
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 6.0,
              color: Colors.black.withValues(alpha: 0.8),
            ),
            Shadow(
              offset: Offset(0, 0),
              blurRadius: 12.0,
              color: Colors.amber.shade200.withValues(alpha: 0.2),
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(color: Colors.amber.shade300),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
