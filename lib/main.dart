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
      "answers": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": 'What\'s your favorite animal',
      "answers": ["Bear", "Cat", "Dog", "Spider"],
    },
    {
      "questionText": 'who\'s your favorite city',
      "answers": ["London", "Amsterdam", "Paris", "New York"],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    // setState function tells flutter to change the state of the app
    setState(() {
      _questionIndex = _questionIndex + 1;
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
          : Result(),
    ));
  }
}
