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
            : Result(),
      ),
    );
  }
}
