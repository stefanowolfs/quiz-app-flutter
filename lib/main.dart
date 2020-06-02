import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Blue', 'Black', 'Red', 'Green']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Snake', 'Lion', 'Turtle', 'Cat']
      },
      {
        'questionText': 'What\'s your favorite instructor?',
        'answers': ['Snake', 'Max', 'Diego', 'Felipe']
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Amazing Quiz App',
              style: TextStyle(color: Color(0xFF61E786)),
            ),
            backgroundColor: Color(0xFF48435C),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList(),
            ],
          )),
    );
  }
}
