//importing 'flutter material' package
import 'package:flutter/material.dart';

// Main function
void main() {
  //runApp function obtained from material package runs the class0
  runApp(MyApp());
}

// StatelessWidget class obtained from material package
class MyApp extends StatelessWidget {
  //Widget return type, build function from material package
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
