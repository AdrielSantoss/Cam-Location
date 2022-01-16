import 'package:flutter/material.dart';

class Reposta extends StatelessWidget {
  final String texto;
  final Function responder;

  const Reposta({ Key? key, required this.texto, required this.responder }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => responder(), child: Text(texto), style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold
            )
      ));
  }
}