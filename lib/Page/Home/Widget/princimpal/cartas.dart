import 'package:flutter/material.dart';
import '../widget/lista_cartas.dart';
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
                    value: cartasUser[0].value,
                    icon: cartasUser[0].icon,
                    color: cartasUser[0].color,
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(-5 / 360),
                child: Padding(
                  padding: EdgeInsets.only(right: 95 - cartaVerse, top: 5),
                  child: CartaFrente(
                    value: cartasUser[1].value,
                    icon: cartasUser[1].icon,
                    color: cartasUser[1].color,
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
                    value: cartasUser[2].value,
                    icon: cartasUser[2].icon,
                    color: cartasUser[2].color,
                  ),
                ),
              ),
              Visibility(
                visible: cartaVerseVisivel,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(2 / 360),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 35,
                    ),
                    child: CartaNova(
                      value: cartasUser[3].value,
                      icon: cartasUser[3].icon,
                      color: cartasUser[3].color,
                    ),
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(5 / 360),
                child: Padding(
                  padding: EdgeInsets.only(left: 95 - cartaVerse, top: 5),
                  child: CartaFrente(
                    value: cartasUser[4].value,
                    icon: cartasUser[4].icon,
                    color: cartasUser[4].color,
                  ),
                ),
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(8 / 360),
                child: Padding(
                  padding: EdgeInsets.only(left: 160 - cartaVerse, top: 10),
                  child: CartaFrente(
                    value: cartasUser[5].value,
                    icon: cartasUser[5].icon,
                    color: cartasUser[5].color,
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
