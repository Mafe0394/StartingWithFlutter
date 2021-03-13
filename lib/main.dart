import 'package:flutter/material.dart';

//First function Dart execute
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var indexQuestion=0;
  
  void onPressed() {
    print('Answer 1 chosen!');
    indexQuestion++;
    print(indexQuestion);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
     'What\'s a cat?',
     'What\'s a dog?',
     'What\'s a Parrot?'
     ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perros y gatos'),
        ),
        body: Column(
          children: [
            Text(question[indexQuestion]),
            ElevatedButton(
              onPressed: onPressed, 
              child: Text('Answer 1')),
            ElevatedButton(
              onPressed: ()=>print('Answer 2 chosen!'), 
              child: Text('Answer 2')),
            ElevatedButton(
              onPressed: (){
                print('Answer 3 chosen!');
              }, 
              child: Text('Answer 3')),
          ],
        ),
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
