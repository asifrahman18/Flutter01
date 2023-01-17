//importing 'flutter material' package
import 'package:flutter/material.dart';

import './question.dart';

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
              ElevatedButton(onPressed: _answer, child: Text('Option 1')),
              ElevatedButton(
                  onPressed: () => print('Answer 2 chosen'),
                  child: Text('Option 2')),
              ElevatedButton(
                  onPressed: () {
                    // ...
                    // ...
                    print('Answer 3 chosen');
                  },
                  child: Text('Option 3')),
            ],
          )),
    );
  }
}
