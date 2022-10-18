import 'package:flutter/material.dart';
import '../User/usuarios.dart';
import 'Widget/princimpal/carta_usada.dart';
import 'Widget/princimpal/carta_verso.dart';
import 'Widget/princimpal/cartas.dart';
import 'Widget/widget/lista_cartas.dart';

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
                        itemCount: cartasNaoUsada.length,
                        itemBuilder: ((context, index) {
                          return Align(
                            alignment: Alignment.topCenter,
                            heightFactor: 0.003,
                            child: CartaVerso(
                              value: cartasNaoUsada[index].value,
                              icon: cartasNaoUsada[index].icon,
                              color: cartasNaoUsada[index].color,
                            ),
                          );
                        })),
                  ),
                  SizedBox(
                    height: 300,
                    width: 150,
                    child: ListView.builder(
                      itemCount: cartasUsada.length,
                      itemBuilder: ((context, index) {
                        return Align(
                          alignment: Alignment.topCenter,
                          heightFactor: 0.003,
                          child: CartaUsada(
                            value: cartasUsada[index].value,
                            icon: cartasUsada[index].icon,
                            color: cartasUsada[index].color,
                          ),
                        );
                      }),
                    ),
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
