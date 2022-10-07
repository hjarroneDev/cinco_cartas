import 'package:flutter/material.dart';
import '../User/usuarios.dart';
import 'Widget/carta_frente.dart';
import 'Widget/carta_verso.dart';
import 'Widget/cartas.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Usuarios(),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: const [
                      CartaVerso(),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 1),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 2),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 3),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 4),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 5),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 6),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 7),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 8),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 9),
                        child: CartaVerso(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.6 * 10),
                        child: CartaVerso(),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      CartaFrente(
                        value: 'A',
                        icon: Icons.heart_broken_rounded,
                        color: Colors.red.shade300,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 1),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 2),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 3),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 4),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 5),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 6),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 7),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 8),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 9),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1.6 * 10),
                        child: CartaFrente(
                          value: 'A',
                          icon: Icons.heart_broken_rounded,
                          color: Colors.red.shade300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),

              //Text('$width'),
              const Cartas()
            ],
          ),
        ),
      ),
    );
  }
}
