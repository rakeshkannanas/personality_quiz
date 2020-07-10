import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String ques;
  Questions(this.ques);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        ques,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25.0,
          letterSpacing: 2.0,
          color: Colors.red,
          fontWeight: FontWeight.bold ,
        ),
      ),
    );
  }
}
