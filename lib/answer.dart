import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final select;
  final String answerText;

  Answer(this.select, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: select,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blueAccent,
        ),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
