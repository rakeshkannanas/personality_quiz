import 'package:flutter/material.dart';
import 'quiz.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final Function reset;
  ResultScreen(this.score,this.reset);

  String get resultTest {
    String res;
    if (score >= 30) {
      res = 'You are a mean person';
    } else if (score > 25) {
      res = 'You are pretty likable';
    } else if (score > 20) {
      res = 'You are a warm person';
    } else if (score > 15) {
      res = 'You are innocent';
    } else if (score >= 3) {
      res = 'Great Human being';
    } else {
      res = 'You are a bad person';
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          resultTest,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
            letterSpacing: 2.0,
          ),
        ),
        ),
        FlatButton(child: Text('Restart Quiz',style: TextStyle(
          color: Colors.deepPurple,
          fontSize: 17.0
        ),),
        onPressed: reset,)
      ],
    );
  }
}
