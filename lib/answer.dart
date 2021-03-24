

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final String text;
  final Function function;

  Answer({@required this.text, @required this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          textStyle: MaterialStateProperty.all(
            TextStyle(color: Colors.white))
        ),
              onPressed: function, 
              child: Text(text)),
    );
  }
}