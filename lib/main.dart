//importing 'flutter material' package
import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

// Main function
void main() {
  runApp(MyApp());
}

//Alternate way of calling main function
// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Underscore at the beginning of a name sets anything as private
class _MyAppState extends State {
  final _question = const [
    {
      'questionTxt': 'What is your favourite color?',
      'answer': [
        {'text': 'Red', 'score': 6},
        {'text': 'Black', 'score': 8},
        {'text': 'White', 'score': 4},
        {'text': 'Blue', 'score': 2}
      ],
    },
    {
      'questionTxt': 'What is your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Dog', 'score': 4},
        {'text': 'Snake', 'score': 8},
        {'text': 'Cat', 'score': 2}
      ],
    },
    {
      'questionTxt': 'What is your favourite language?',
      'answer': [
        {'text': 'C', 'score': 6},
        {'text': 'Java', 'score': 6},
        {'text': 'Dart', 'score': 6},
        {'text': 'Swift', 'score': 6}
      ],
    },
    {
      'questionTxt': 'What is your IDE?',
      'answer': [
        {'text': 'VS Code', 'score': 2},
        {'text': 'Sublime Text', 'score': 4},
        {'text': 'Notepad++', 'score': 8},
        {'text': 'Code Blocks', 'score': 6}
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

  void _answer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _question.length) {
      print('We have more questions');
    }
  }

  //Widget return type, build function from material package
  @override

  // ctrl + Space brings the list of possible arguments in any function
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lit App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(_answer, _question, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
