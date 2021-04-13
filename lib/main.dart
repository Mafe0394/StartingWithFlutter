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
      '_Text': 'What\'s a cat?',
      'answer': ['A mean thing', 'An evil thing', 'A bird']
    },
    {
      'questionText': 'What\'s a dog?',
      'answer': ['A Fluffy thing', 'A pretty thing', 'A bird', 'Love with fur']
    },
    {
      'questionText': 'What\'s a Parrot?',
      'answer': ['A feather thing', 'A chatty thing']
    }
  ];
  int _indexQuestion = 0;

  void onPressed() {
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
            : Result(),
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
