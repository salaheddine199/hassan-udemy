import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(question[questionIndex]["questionText"]),
          ...(question[questionIndex]["answers"] as List<String>).map((asnwer) {
            return Answer(answerQuestion, asnwer);
          }), //.toList(),
        ],
      ),
    );
  }
}
