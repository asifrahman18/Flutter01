import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final answerQuestion;
  int questionIndex;
  final List<Map<String, Object>> question;

  Quiz(
    @required this.answerQuestion,
    @required this.question,
    @required this.questionIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionTxt'].toString(),
        ),
        ...(question[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score']),
            answer['text'].toString(),
          );
        }).toList()
      ],
    );
  }
}
