import 'package:flutter/material.dart';
import 'package:shopocalipse/view/grandeListHome_view.dart';

class FadeLogoScreen extends StatefulWidget {
  const FadeLogoScreen({super.key});

  @override
  State<FadeLogoScreen> createState() => _FadeLogoScreenState();
}

class _FadeLogoScreenState extends State<FadeLogoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // le contrôleur d'animation
  late Animation<double> _animation; // l'animation de l'opacité
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ), // L'animation complète prendra 2 secondes
    );

    // Création de l'Animation :
    //  CurvedAnimation permet d'appliquer une courbe (effet d'accélération/décélération)
    //   à la progression de l'animation. Curves.easeInOut offre un fondu doux.
    // L'animation produira des valeurs de 0.0 (transparent) à 1.0 (opaque).
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    //  Démarrage de l'animation :
    //  _controller.repeat(reverse: true) fait en sorte que l'animation se répète
    //   indéfiniment. reverse: true signifie qu'elle va faire un aller-retour :
    //   fondu entrant (0.0 -> 1.0), puis fondu sortant (1.0 -> 0.0), et ainsi de suite.
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // très important : libérer les ressources de l'AnimationController
    // lorsque le widget est supprimé pour éviter les fuites de mémoire.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 216, 176, 115),
                const Color.fromARGB(255, 15, 9, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GrandeList()),
              );
            },
            child: FadeTransition(
              opacity:
                  _animation, // le widget FadeTransition utilise notre animation pour contrôler l'opacité.
              child: Image.asset(
                'assets/images/logo.png',
                // width: 700,
                // height:
                //     700, // Définir une taille fixe de 200 pixels pour le logo Flutter.
              ),
            ),
          ),
        ),
      ),
    );
  }
}
