import 'package:flutter/material.dart';
import 'main.dart';

class Answers extends StatelessWidget {
  final Function ans;
  final String answertxt;
  Answers(this.ans,this.answertxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     padding: EdgeInsets.all(10.0),
     child: RaisedButton(
        onPressed: ans,
        child: Text(answertxt,
          style: TextStyle(
            letterSpacing: 2.0,
            color: Colors.brown,
            fontWeight: FontWeight.bold ,
          ),
        ),
      ),
    );
  }
}
