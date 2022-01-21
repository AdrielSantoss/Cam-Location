// ignore_for_file: avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:procjet/questionario.dart';
import 'package:procjet/resultado.dart';

main() {
  runApp(const PerguntaApp()); 
}

class PerguntaAppState extends State<PerguntaApp>  {
    var perguntaSelecionada = 0; 
    var pontuacaoTotal = 0;
    final perguntas = [
      {
        'texto':'Qual sua cor favorita?',
        'respostas': [
            {'texto':'Preto', 'nota':10}, 
            {'texto':'Vermelho', 'nota':5}, 
            {'texto':'Verde', 'nota':3}, 
            {'texto':'Branco', 'nota':1}
          ]
      },
      {
        'texto':'Qual é o seu animal favorito?',
        'respostas': [
            {'texto':'Coelho', 'nota':2},
            {'texto':'Cobra', 'nota':10},
            {'texto':'Elefante', 'nota':8},
            {'texto':'Leão', 'nota':0}
          ]
      },
      {
        'texto': 'Qual sua linguagem favorita?',
        'respostas': [
            {'texto':'PHP', 'nota':9}, 
            {'texto':'Javascript', 'nota':8},
            {'texto':'C#', 'nota':2},
            {'texto': 'Java', 'nota':10}
         ]
      },
    ];

    void responder(int pontuacao) {
      if(temPerguntaSelecionada) {
        setState(() {
              perguntaSelecionada++;
              pontuacaoTotal += pontuacao;
        });
      }
      print(pontuacaoTotal);
    }

    bool get temPerguntaSelecionada {
      return perguntaSelecionada < perguntas.length;
    }

    @override
    Widget build(BuildContext context) {    
      return MaterialApp(
        home:  Scaffold(
          appBar: AppBar(
            title: const Text('Pergunta'),
            centerTitle: true,
          ),
          body: temPerguntaSelecionada ? Questionario(responder: responder, perguntas: perguntas, perguntaSelecionada: perguntaSelecionada) 
          : const Resultado(text: 'Parabéns')
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