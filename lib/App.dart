import 'package:flutter/material.dart';
import './widgets/Result.dart';
import './widgets/Quiz.dart';
import './QuestionsData.dart';

class _AppState extends State<App> {

  int _currentQuestionIndex = 0;
  int _punctuation = 0;
  bool _quizFinished = false;
  final List<Map<String, Object>> questions = QuestionsData().questions;

  void onNextQuestion(String answer, String rightAnswer) {
    this.setState(() { 
      if (_currentQuestionIndex < questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        _quizFinished = true;
      }
      if (rightAnswer == answer) {
        _punctuation++;
      }
      print(_punctuation);
    });
  }

  void resetQuiz() {
    this.setState(() { 
      _currentQuestionIndex = 0;
      _punctuation = 0;
      _quizFinished = false;
    });
  }

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
        body: !_quizFinished ? Container(
          child: Column(
            children: <Widget>[
              Image.asset(questions[_currentQuestionIndex]['imgPath']),
              Quiz(
                currentQuestionIndex: _currentQuestionIndex,
                questions: questions,
                onNextQuestion: onNextQuestion,
              )
            ],
          ),
        ) : Result(_punctuation, questions.length, resetQuiz),
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