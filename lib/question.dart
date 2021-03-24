  import 'package:flutter/material.dart';

  class Question extends StatelessWidget {

    final String questionText;

    Question(this.questionText); // Constructor

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.all(35),
        child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          fontFamily: 'Arial'),
        textAlign: TextAlign.center,),)
        ;
    }
  }