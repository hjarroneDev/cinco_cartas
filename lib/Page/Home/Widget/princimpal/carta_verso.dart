import 'package:flutter/material.dart';

class CartaVerso extends StatefulWidget {
  final IconData icon;
  final String value;
  final Color color;

  const CartaVerso({
    super.key,
    required this.icon,
    required this.value,
    required this.color,
  });

  @override
  State<CartaVerso> createState() => _CartaVersoState();
}

class _CartaVersoState extends State<CartaVerso> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 220,
          width: 150,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/images/defult.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 0.5,
                  spreadRadius: 0.8)
            ],
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.heart_broken_rounded,
                        size: 25,
                        color: Colors.black26,
                      ),
                      Icon(
                        Icons.api_rounded,
                        size: 25,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: const [
                    Icon(
                      Icons.filter_5_rounded,
                      size: 45,
                      color: Colors.black26,
                    ),
                    Center(
                      child: Text(
                        'Cartas',
                        style: TextStyle(
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //decorationStyle: TextDecorationStyle.double,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.navigation_rounded,
                        size: 25,
                        color: Colors.black26,
                      ),
                      Icon(
                        Icons.spa_rounded,
                        size: 25,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
