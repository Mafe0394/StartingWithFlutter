import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function function;

  Result({@required this.resultScore, @required this.function});

  String get resultPhrase {
    String resultText;
    if (resultScore < 8) {
      resultText = 'Go to pre-school again';
    } else if (resultScore < 15) {
      resultText = 'Meh!';
    } else {
      resultText = 'You are awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              )),
          Answer(text: "Reset", function: function)
        ],
      ),
    );
  }
}
