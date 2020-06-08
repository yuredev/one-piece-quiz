import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int punctuation;
  final int sizeOfQuiz;
  final void Function() resetQuiz;

  Result(this.punctuation, this.sizeOfQuiz, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Você acertou $punctuation de $sizeOfQuiz',
            style: TextStyle(
              fontSize: 20
            ),
          ),
        ),
        RaisedButton(
          child: Text('Resetar quiz'),
          onPressed: resetQuiz,
          textColor: Colors.white,
          color: Color.fromRGBO(200, 66, 65, 1),
        )
      ],
    );
  }
}