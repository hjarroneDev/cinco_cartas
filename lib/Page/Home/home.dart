import 'package:flutter/material.dart';
import '../User/usuarios.dart';
import 'Widget/princimpal/carta_usada.dart';
import 'Widget/princimpal/carta_verso.dart';
import 'Widget/princimpal/cartas.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> naoUsada = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20
  ];
  List<int> usadas = [21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
  List<int> minhas = [31, 32, 33, 34, 35, 36];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Usuarios(),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 150,
                    child: ListView.builder(
                        itemCount: naoUsada.length,
                        itemBuilder: ((context, index) {
                          return const Align(
                            alignment: Alignment.topCenter,
                            heightFactor: 0.003,
                            child: CartaVerso(),
                          );
                        })),
                  ),
                  SizedBox(
                    height: 300,
                    width: 150,
                    child: ListView.builder(
                        itemCount: usadas.length,
                        itemBuilder: ((context, index) {
                          return Align(
                            alignment: Alignment.topCenter,
                            heightFactor: 0.003,
                            child: CartaUsada(
                              value: 'A',
                              icon: Icons.heart_broken_rounded,
                              color: Colors.red.shade300,
                            ),
                          );
                        })),
                  ),
                ],
              ),

              //Text('$width'),
              const Cartas()
            ],
          ),
        ),
      ),
    );
  }
}
