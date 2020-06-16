import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Amazing Quiz App',
              style: TextStyle(color: Color(0xFF61E786)),
            ),
            backgroundColor: Color(0xFF48435C),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
