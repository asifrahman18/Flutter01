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
      'What is your favourite color?',
      'What is your favourtite game?',
      'What is your favourite country?',
      'What is your favourite color?',
      'What is your favourtite game?',
      'What is your favourite country?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lit App'),
          ),
          body: Column(
            children: [
              Question(question[_questionIndex]),
              Answer(_answer),
              Answer(_answer),
              Answer(_answer),
            ],
          )),
    );
  }
}
