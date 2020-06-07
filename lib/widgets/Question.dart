import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String _text;
  final List<String> _answers;
  Question(this._text, this._answers);

  @override
  Widget build(BuildContext context) {

    List<Widget> answerButtons = _answers.map((a) => Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Color.fromRGBO(200, 66, 65, 1),
        onPressed: () => null,
        child: Text(a),
      ),
    )).toList();

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            _text,
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