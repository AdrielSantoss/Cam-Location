import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao({ Key? key, required this.texto }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( // Recomendado utilizar sizedBox, quando é necessario utilizar margins utilizar container
      width: double.infinity,
      margin: const EdgeInsets.all(20), // LTRB = LEFT, TOP, RIGHT, BOTTOM, all = para todos os lados
      child: Text(
         texto,
         style: const TextStyle(fontSize: 28),
         textAlign: TextAlign.center,
        ),
    );
  }
}