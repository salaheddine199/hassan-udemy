import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/quizApp/result.dart';
import 'quiz.dart';

//main() => runApp(MyQuizApp()); //if we use this we need MaterialApp.

class MyQuizApp extends StatefulWidget {
  @override
  _MyQuizAppState createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _question = [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Green", "score": 20},
        {"text": "Blue", "score": 30},
        {"text": "Yellow", "score": 40},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 10},
        {"text": "Tiger", "score": 20},
        {"text": "Elephant", "score": 30},
        {"text": "Lion", "score": 40},
      ],
    },
    {
      "questionText": "What's your favorite Language?",
      "answers": [
        {"text": "C++", "score": 10},
        {"text": "Dart", "score": 20},
        {"text": "Java", "score": 30},
        {"text": "Java Script", "score": 40},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void answerQuestion(score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });

    //_questionIndex == _question.length ? _questionIndex = 0 : _questionIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(CupertinoIcons.arrowshape_turn_up_left_fill),
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: "Go Back",
          ),
          title: Text("Quiz App"),
          actions: [
            InkWell(
              onTap: () {},
              child: Icon(CupertinoIcons.person_crop_circle_badge_checkmark),
            ),
          ],
        ),
        body: _questionIndex < _question.length
            ? Quiz(_question, _questionIndex, answerQuestion)
            : Result(_resetQuiz));
  }
}
