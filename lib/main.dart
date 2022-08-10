import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// State of generic type, Tells that MyAppState belongs to MyApp
// Underscore "_" turns MyAppState in to a private class
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 5},
        {"text": "Green", "score": 3},
        {"text": "White", "score": 1}
      ],
    },
    {
      "questionText": 'What\'s your favorite animal',
      "answers": [
        {"text": "Bear", "score": 8},
        {"text": "Cat", "score": 2},
        {"text": "Dog", "score": 1},
        {"text": "Spider", "score": 10}
      ],
    },
    {
      "questionText": 'who\'s your favorite city',
      "answers": [
        {"text": "London", "score": 5},
        {"text": "Amsterdam", "score": 4},
        {"text": "Paris", "score": 3},
        {"text": "New York", "score": 7}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {

    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      // setState function tells flutter to change the state of the app
      _questionIndex = _questionIndex + ;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < _questions.length // Ternary if statement
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
