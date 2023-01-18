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

class _MyAppState extends State {
  var _questionIndex = 0;
  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  //Widget return type, build function from material package
  @override

  // ctrl + Space brings the list of possible arguments in any function
  Widget build(BuildContext context) {
    var question = [
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
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lit App'),
          ),
          body: Column(
            children: [
              Question(
                question[_questionIndex],
                ['questionTxt'],
              ),
              Answer(_answer),
              Answer(_answer),
              Answer(_answer),
            ],
          )),
    );
  }
}
