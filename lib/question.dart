import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF439A86),
      padding: new EdgeInsets.fromLTRB(4, 10, 4, 10),
      margin: new EdgeInsets.only(bottom: 40),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Color(0xFFD7DAE5),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
