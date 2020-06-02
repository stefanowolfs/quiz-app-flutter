import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 50, right: 50, bottom: 5),
        child: RaisedButton(
          child: Text(
            answerText,
            style: TextStyle(color: Color(0xFF48435C)),
          ),
          color: Color(0xFFD7DAE5),
          onPressed: selectHandler,
        ));
  }
}
