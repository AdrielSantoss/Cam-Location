import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const PerguntaApp()); 
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: const Text('Pergunta'),
          centerTitle: true,
        ),
        body: const Text('Olá Flutter'),
      )
    );
  }
} 