import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

// State of generic type, Tells that MyAppState belongs to MyApp
class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    // setState function tells flutter to change the state of the app
    setState(() {

      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 2"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 3"), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
