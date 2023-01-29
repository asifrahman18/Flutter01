import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  final resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 12) {
      resultText = 'You are awesome and completely normal person';
    } else if (resultScore > 12 && resultScore <= 18) {
      resultText = 'You are getting weird but still awesome';
    } else if (resultScore > 18 && resultScore <= 24) {
      resultText = 'You are a weird person';
    } else {
      resultText = 'What is wrong with you?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
