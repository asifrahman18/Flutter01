//importing 'flutter material' package
import 'package:flutter/material.dart';

// Main function
void main() {
  //runApp function obtained from material package runs the class
  runApp(MyApp());
}

//Alternate way of calling main function

// void main() => runApp(MyApp());

// StatelessWidget class obtained from material package
class MyApp extends StatelessWidget {
  void answer() {
    print('Answer Chosen');
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
              Text(question[0]),
              ElevatedButton(onPressed: answer, child: Text('Option 1')),
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
