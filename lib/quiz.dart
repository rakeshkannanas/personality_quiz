import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class QuizScreen extends StatelessWidget {
  final List<Map<String,Object>> ques;
  final int qindex;
  final Function chooseans;
  QuizScreen(@required this.ques,@required this.qindex,@required this.chooseans);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(ques[qindex]['questext']),
        ...(ques[qindex]['anstext'] as List<Map<String,Object>>)
            .map((answer) => Answers((){chooseans(answer['score']);}, answer['text']))
            .toList()
      ],
    );
  }
}
