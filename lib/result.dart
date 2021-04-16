import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase{
    String resultText;
    if (resultScore<8){
      resultText='Go to pre-school again';
    }else if(resultScore<15){
      resultText='Meh!';
    }else{
      resultText='You are awesome';
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
