import 'package:flutter/material.dart';
import 'package:quizapp/resultscreen.dart';
import 'quiz.dart';

void main() {
  runApp(MaterialApp(
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _qindex = 0;
  var _finalScore = 0;
  final _ques = const [
    {
      'questext': 'What\'s your favorite color?',
      'anstext': [{'text':'Blue','score':10},
        {'text':'Green','score':5},
        {'text':'Yellow','score':1},
        {'text':'White','score':3}]
    },
    {
      'questext': 'What\'s your favorite animal?',
      'anstext': [{'text':'Dog','score':1},
  {'text':'Cat','score':7},
  {'text':'Snake','score':10}
  ]
    },
    {
      'questext': 'Who\'s your favorite cricketer?',
      'anstext': [{'text':'Afridi','score':10},
        {'text':'Rahim','score':8},
        {'text':'Dhoni','score':1},
        {'text':'Kohli','score':3}]
    },
  ];
  void _resetquiz(){
    setState(() {
      _finalScore=0;
      _qindex = 0;
    });
}
  void _chooseans(int score) {
    _finalScore += score;
    setState(() {
      _qindex = _qindex + 1;
    });

    print('Answer pressed');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: _qindex < _ques.length
          ? QuizScreen(_ques,_qindex,_chooseans)
          : ResultScreen(_finalScore,_resetquiz),
    );
  }
}
