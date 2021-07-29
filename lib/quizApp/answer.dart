import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(30, 10, 30, 15),
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: EdgeInsets.only(top: 10, bottom: 10),
        ),
      ),
    );
  }
}
