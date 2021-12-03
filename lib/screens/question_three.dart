import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/models/question.dart';

// ignore: must_be_immutable
class QuestionThree extends StatelessWidget {
  int scoreCount;

  final Question questions = Question(
      id: 3,
      question: "INSAT is well known for its",
      falseOptionOne: "Architecture",
      falseOptionTwo: "Green space",
      falseOptionThree: "Quality of program",
      trueAnswer: "Clubs");

  QuestionThree({
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
              Navigator.of(context).pushNamed('/score', arguments: scoreCount);
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
              Navigator.of(context).pushNamed('/score', arguments: scoreCount);
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
              Navigator.of(context).pushNamed('/score', arguments: scoreCount);
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
              Navigator.of(context).pushNamed('/score', arguments: scoreCount);
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
