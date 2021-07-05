import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:question_app/components/questionary.dart';
import 'package:question_app/components/result.dart';

main() => runApp(QuestionApp());

/*
classe que manipula todo o estado do componente extende uma classe estado do tipo
componente que você está criando é ela que vai controlar todo o estado do componente stateful

*/
class _QuestionAppState extends State<QuestionApp> {
  int _questionId = 0;
  int notaTotal = 0;

  void _response(int notas) {
    if (hasQuestion) {
      setState(() {
        _questionId++;
        notaTotal += notas;
      });
    }
  }

  void _restart() {
    setState(() {
      _questionId = 0;
      notaTotal = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      'question': 'Qual seu time na nba?',
      'response': [
        {'text': 'Lakers', 'nota': 10},
        {'text': 'Celtics', 'nota': 5},
        {'text': 'Nets', 'nota': 3},
        {'text': 'San Antonio', 'nota': 1}
      ],
    },
    {
      'question': 'Qual seu time no futebol?',
      'response': [
        {'text': 'Inter', 'nota': 10},
        {'text': 'Grêmio', 'nota': 5},
        {'text': 'Palmeiras', 'nota': 3},
        {'text': 'Santos', 'nota': 1}
      ]
    },
    {
      'question': 'Qual sua cor favorita?',
      'response': [
        {'text': 'Azul', 'nota': 10},
        {'text': 'Verde', 'nota': 5},
        {'text': 'Vermelho', 'nota': 3},
        {'text': 'Preto', 'nota': 1}
      ]
    },
    {
      'question': 'Qual a velocidade da sua internet?',
      'response': [
        {'text': '50mb', 'nota': 10},
        {'text': '100mb', 'nota': 5},
        {'text': '200mb', 'nota': 3},
        {'text': '250mb', 'nota': 1}
      ]
    },
    {
      'question': 'Qual sua nacionalidade?',
      'response': [
        {'text': 'Brasileiro', 'nota': 10},
        {'text': 'Paquistanês', 'nota': 5},
        {'text': 'judeu', 'nota': 3},
        {'text': 'Italiano', 'nota': 1}
      ]
    },
  ];

  bool get hasQuestion {
    return _questionId < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Personal Question App'),
              backgroundColor: Color.fromRGBO(102, 51, 153, 1),
              centerTitle: true,
            ),
            body: hasQuestion
                ? Questionary(
                    questionId: _questionId,
                    questions: _questions,
                    onAnswer: _response,
                  )
                : Result(notaTotal, _restart)));
  }
}

/*

Classe que extende o widget Statefull
necessario para criar o componente de estado

como ela é uma classe abstrata necessita implementar um metodo que cria
um estado do mesmo tipo da classe que controlar o estado
dando como retorno essa classe
 */

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
