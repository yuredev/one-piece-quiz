import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String text;
  final List<String> answers;
  final void Function(String, String) onNextQuestion;
  final String rightAnswer;

  Question({
    @required this.text, 
    @required this.answers,
    @required this.onNextQuestion,
    @required this.rightAnswer
  });

  /// function that return a Question button widget acording to a answer String
  Container _transformInBtnQuiz(String answer) => Container(
    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
    width: double.infinity,
    child: RaisedButton(
      textColor: Colors.white,
      color: Color.fromRGBO(200, 66, 65, 1),
      onPressed: () => onNextQuestion(answer, rightAnswer),
      child: Text(answer),
    ),
  );

  @override
  Widget build(BuildContext context) {
    List<Container> answerButtons = answers.map(_transformInBtnQuiz).toList();

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        ...answerButtons
      ],
    );
  }
}