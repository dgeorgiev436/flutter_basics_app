import 'package:flutter/material.dart';

import "./question.dart";
import "./answer.dart";

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
    // Dart Map
    var questions = [
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

    
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ],
      ),
    ));
  }
}
