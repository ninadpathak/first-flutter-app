import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 100, bottom: 100),
      child: Text(
        question,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
