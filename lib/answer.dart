import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function select;

  Answer(this.select);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            primary: Colors.amberAccent,
          ),
          child: Text('Option 1')),
    );
  }
}
