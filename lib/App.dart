import 'package:flutter/material.dart';
import './widgets/Question.dart';
import './widgets/Quiz.dart';

class _AppState extends State<App> {

  int _currentQuestionIndex = 0;

  final List<Map<String, Object>> _questions = [{
    'text': 'Que estilo de espada o Zoro utiliza para usar o Shishi Sonson?',
    'answers': [
      'Santoryu', 
      'Nitoryu',
      'Itoryu',
      'Wado Ichimonji'
    ],
    'right answer': 'Itoryu'
  },
  {
    'text': 'Qual o nome do imediato dos Piratas do Ruivo',
    'answers': [
      'Bon Clay', 
      'Yassop'
      'Ben Beckman',
      'Lucky Roo'
    ],
    'right answer': 'Ben Beckman'
  },
  {
    'text': 'Qual o nome da Akuma no Mi do Enel?',
    'answers': [
      'Gura Gura no Mi', 
      'Goro Gor no Mi',
      'Neko Neko no Mi',
      'Nikyu Nikyu no Mi'
    ],
    'right answer': 'Santoryu'
  },
  {
    'text': 'Qual o nome do imediato dos Piratas do Ruivo',
      'answers': [
      'Santoryu', 
      'Nitoryu',
      'Itoryu',
      'Wado Ichimonji'
    ],
    'right answer': 'Santoryu'
  }];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(200, 66, 65, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('One Piece Quiz'),
              Text('by: yurematias')
            ],
          )
        ),
        body: Column(
          children: <Widget>[
            Image.asset('assets/images/source.gif'),
            Quiz(_questions, _currentQuestionIndex)
          ],
        ),
      ),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() {
    return _AppState();
  }
}

