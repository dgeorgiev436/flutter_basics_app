import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (totalScore <= 8) {
      resultText = "You are awesome!!!";
    } else if (totalScore <= 12) {
      resultText = "Pretty Likeable!!";
    } else if (totalScore <= 16) {
      resultText = "Pretty strange";
    } else {
      resultText = "You are bad!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz"), textColor: Colors.blue, onPressed: resetQuiz)
        ],
      ),
    );
  }
}
