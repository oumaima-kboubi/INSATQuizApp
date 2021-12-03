import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/models/question.dart';

// ignore: must_be_immutable
class QuestionTwo extends StatelessWidget {
  int scoreCount;

  final Question questions = Question(
      id: 2,
      question: "INSAT was established in",
      falseOptionOne: "1991",
      falseOptionTwo: "1993",
      falseOptionThree: "1994",
      trueAnswer: "1992");

  QuestionTwo({
    Key? key,
    required this.scoreCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
            child: Text(
              questions.question,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            child: Text(questions.falseOptionOne),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/third_question', arguments: scoreCount);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.pink[600],
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          ElevatedButton(
            child: Text(questions.trueAnswer),
            onPressed: () {
              scoreCount++;
              Navigator.of(context)
                  .pushNamed('/third_question', arguments: scoreCount);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.pink[600],
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          ElevatedButton(
            child: Text(questions.falseOptionTwo),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/third_question', arguments: scoreCount);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.pink[600],
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          ElevatedButton(
            child: Text(questions.falseOptionThree),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/third_question', arguments: scoreCount);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.pink[600],
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle:
                    const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
        ],
      ),
    ));
  }
}
