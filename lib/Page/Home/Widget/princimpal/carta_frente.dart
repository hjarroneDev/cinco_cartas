import 'package:flutter/material.dart';

class CartaFrente extends StatefulWidget {
  final IconData icon;
  final String value;
  final Color color;
  const CartaFrente(
      {super.key,
      required this.icon,
      required this.value,
      required this.color});

  @override
  State<CartaFrente> createState() => _CartaFrenteState();
}

class _CartaFrenteState extends State<CartaFrente> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 220,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.value,
                            style: TextStyle(
                              fontSize: 25,
                              color: widget.color,
                            ),
                          ),
                          Icon(
                            widget.icon,
                            size: 25,
                            color: widget.color,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  widget.icon,
                  size: 45,
                  color: widget.color,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: RotatedBox(
                    quarterTurns: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.value,
                              style: TextStyle(
                                fontSize: 25,
                                color: widget.color,
                              ),
                            ),
                            Icon(
                              widget.icon,
                              size: 25,
                              color: widget.color,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
