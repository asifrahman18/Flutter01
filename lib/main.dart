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
  //Widget return type, build function from material package
  @override

  // ctrl + Space brings the list of possible arguments in any function
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Lit App'),
          ),
          body: Column(
            children: [
              Text('Question'),
              ElevatedButton(onPressed: null, child: Text('Question 1')),
              ElevatedButton(onPressed: null, child: Text('Question 2')),
              ElevatedButton(onPressed: null, child: Text('Question 3')),
            ],
          )),
    );
  }
}
