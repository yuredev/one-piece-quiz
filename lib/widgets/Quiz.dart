import 'package:flutter/material.dart';
import './Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions; 
  final int currentQuestionIndex; 
  final void Function(String, String) onNextQuestion;

  Quiz({
    @required this.questions, 
    @required this.currentQuestionIndex,
    @required this.onNextQuestion
  });

  @override
  Widget build(BuildContext context) {    
    return Question(
      text:  questions[currentQuestionIndex]['text'], 
      answers: questions[currentQuestionIndex]['answers'],
      onNextQuestion: onNextQuestion,
      rightAnswer: questions[currentQuestionIndex]['right answer'],
    );
  }
}