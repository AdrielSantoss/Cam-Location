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
    {
      'texto':'Qual sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco',]
    },
    {
      'texto':'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'texto': 'Qual sua linguagem favorita?',
      'respostas': ['PHP', 'Javascript', 'C#', 'Java']
    },
  ];

  void responder() {
    setState(() => perguntaSelecionada++);
  }

    @override
    Widget build(BuildContext context) { 
      List<String> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada].cast()['respostas'] : [];
  
      //List<Widget> respostas = [];
      // for (String textoResp in perguntas[perguntaSelecionada].cast()['respostas']) { // ITERAÇÃO IMPERATIVA
      //   respostas.add(Reposta(texto:textoResp, responder:responder));
      // }

      return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: const Text('Pergunta'),
            centerTitle: true,
          ),
          body: Column(
            children: [
                 Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
                 ...respostas.map((t) => Reposta(texto:t, responder:responder)).toList() // spread: todos elementos da lista vao ser adicionados aqui. -> map comunzao: ITERAÇÃO DELCARATIVA
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