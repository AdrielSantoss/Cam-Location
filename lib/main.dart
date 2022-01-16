// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procjet/questao.dart';
import 'package:procjet/resposta.dart';

main() {
  runApp(const PerguntaApp()); 
}

class PerguntaAppState extends State<PerguntaApp>  {
  var perguntaSelecionada = 0; 
  final perguntas = [
    'Qual sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  void responder() {
    setState(() => perguntaSelecionada++);
  }

    @override
    Widget build(BuildContext context) { 
      return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: const Text('Pergunta'),
            centerTitle: true,
          ),
          body: Column(
            children: [
                Questao(texto: perguntas[perguntaSelecionada]),
                 Reposta(texto: 'Resposta 1', responder:responder),
                 Reposta(texto: 'Resposta 2', responder:responder),
                 Reposta(texto: 'Resposta 3', responder:responder),
            ],
          )
        )
      ); 
    }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
} 