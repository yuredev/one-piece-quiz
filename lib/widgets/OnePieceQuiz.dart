import 'package:flutter/material.dart';

class _OnePieceQuizState extends State<OnePieceQuiz> {

  final Color luffyRed = Color.fromRGBO(200, 66, 65, 1);

  final List<Question> questions = [

  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: luffyRed,
          title: Text('One Piece Quiz'),
        ),
      ),
    );
  }
}

class OnePieceQuiz extends StatefulWidget {
  @override
  _OnePieceQuizState createState() {
    return _OnePieceQuizState();
  }
}

class Question {
  final String _text;
  final List<Map<String, Object>>_questions;
  Question(this._text, this._questions);
}