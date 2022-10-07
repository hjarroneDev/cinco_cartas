import 'package:flutter/material.dart';
import 'carta_frente.dart';
import 'carta_nova.dart';

class Cartas extends StatelessWidget {
  const Cartas({super.key});

  @override
  Widget build(BuildContext context) {
    double cartaVerse = 35;
    bool cartaVerseVisivel = true;
    (cartaVerseVisivel == true) ? cartaVerse = 0 : cartaVerse = 35;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Expanded(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              RotationTransition(
                alignment: Alignment.center,
                turns: const AlwaysStoppedAnimation(-8 / 360),
                child: Padding(
                  padding: EdgeInsets.only(right: 160 - cartaVerse, top: 10),
                  child: CartaFrente(
                    value: 'A',
                    icon: Icons.heart_broken_rounded,
                    color: Colors.red.shade300,
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(-5 / 360),
                child: Padding(
                  padding: EdgeInsets.only(right: 95 - cartaVerse, top: 5),
                  child: const CartaFrente(
                    value: 'A',
                    icon: Icons.spa_rounded,
                    color: Colors.black54,
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(-2 / 360),
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 35 - cartaVerse,
                  ),
                  child: CartaFrente(
                    value: 'A',
                    icon: Icons.api_rounded,
                    color: Colors.red.shade300,
                  ),
                ),
              ),
              Visibility(
                visible: cartaVerseVisivel,
                child: const RotationTransition(
                  turns: AlwaysStoppedAnimation(2 / 360),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                    ),
                    child: CartaNova(
                      value: 'X',
                      icon: Icons.add_box_rounded,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(5 / 360),
                child: Padding(
                  padding: EdgeInsets.only(left: 95 - cartaVerse, top: 5),
                  child: const CartaFrente(
                    value: '10',
                    icon: Icons.spa_rounded,
                    color: Colors.black54,
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(8 / 360),
                child: Padding(
                  padding: EdgeInsets.only(left: 160 - cartaVerse, top: 10),
                  child: const CartaFrente(
                    value: '10',
                    icon: Icons.navigation_rounded,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
