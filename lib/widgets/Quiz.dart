import 'package:flutter/material.dart';
import './Question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> _questions; 
  final int _currentQuestionIndex; 

  Quiz(this._questions, this._currentQuestionIndex);

  @override
  Widget build(BuildContext context) {    
    return Question(
      _questions[_currentQuestionIndex]['text'], 
      _questions[_currentQuestionIndex]['answers']
    );
  }
}