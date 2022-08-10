import "package:flutter/material.dart";

class Question extends StatelessWidget {
  // Final tells Dart that value will not change after initialization
  final String questionText;

// Class Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Width of container equals to full width of the screen
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        // Styling
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
