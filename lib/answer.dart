import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() press;
  final String answerText;
  Answer(this.press, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 200, maxWidth: 300),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple.shade500,
          padding: EdgeInsets.all(5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(answerText),
        onPressed: press,
      ),
    );
  }
}
