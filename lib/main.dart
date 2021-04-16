import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';
import 'question.dart';
import './quiz.dart';

//First function Dart execute
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s a cat?',
      'answer': [
        {'text': 'A mean thing', 'score': 5},
        {'text': 'An evil thing', 'score': 10},
        {'text': 'A bird', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s a dog?',
      'answer': [
        {'text': 'A Fluffy thing', 'score': 2},
        {'text': 'A pretty thing', 'score': 4},
        {'text': 'A bird', 'score': 0},
        {'text': 'Love with fur', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s a Parrot?',
      'answer': [
        {'text': 'A feather thing', 'score': 5},
        {'text': 'A chatty thing', 'score': 10}
      ]
    }
  ];
  int _indexQuestion = 0;
  int _totalScore = 0;

  void onPressed(int score) {

    _totalScore+=score;
    setState(() {
      _indexQuestion++;
      print(_indexQuestion);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perros y gatos'),
        ),
        body: _indexQuestion < _questions.length
            ? Quiz(_questions, onPressed, _indexQuestion)
            : Result(_totalScore),
      ),
    );
  }
}

class Ejemplo {
  //Properties
  String name;
  int age;

  //Constructor
  Ejemplo({@required String inputName, int age = 0}) {
    name = inputName;
    //this refers to the class propertie
    this.age = age;
  }

  //Shortcut constructor
  //Ejemplo({this.name, this.age})

  // Constructor with named arguments,
  // useful when you have a lot the arguments
  // Ejemplo({String names,int age}){
  //   name=names;
  //   this.age=age;
  // }
}
