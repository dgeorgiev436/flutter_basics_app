import "package:flutter/material.dart";

class Question extends StatelessWidget {
  // Final tells Dart that value will not change after initialization
  final String questionText;

// Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}