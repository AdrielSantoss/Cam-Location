import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String text;
  final int pontuacao;
  final Function reiniciar;

  const Resultado({ Key? key, required this.text, required this.pontuacao, required this.reiniciar  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Center( 
            child: Column(
              children: [
                const SizedBox(height: 80), //margin
                Text(text, style: const TextStyle(fontSize: 28)),
              ],
            ),
          ),
          Center(
            child: Text('Sua pontuação foi de $pontuacao pts.', style: const TextStyle(fontSize: 28)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () => reiniciar(), child: const Text('Reiniciar aplicação'))
        ],
    );
  }
}