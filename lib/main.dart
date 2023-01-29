//importing 'flutter material' package
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
  final question = const [
    {
      'questionTxt': 'What is your favourite color?',
      'answer': ['Red', 'Black', 'White', 'Blue'],
    },
    {
      'questionTxt': 'What is your favourite animal?',
      'answer': ['Rabbit', 'Dog', 'Snake', 'Cat'],
    },
    {
      'questionTxt': 'What is your favourite language?',
      'answer': ['C', 'Java', 'Dart', 'Swift'],
    },
    {
      'questionTxt': 'What is your IDE?',
      'answer': ['VS Code', 'Sublime Text', 'Notepad', 'Atoms'],
    },
  ];
  var _questionIndex = 0;
  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < question.length) {
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
        body: _questionIndex < question.length
            ? Column(
                children: [
                  Question(
                    question[_questionIndex]['questionTxt'].toString(),
                  ),
                  ...(question[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answer(_answer, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
