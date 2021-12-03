import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Score extends StatelessWidget {
  int scoreCount;

  Score({
    Key? key,
    required this.scoreCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Your score",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Text(
              scoreCount.toString() + "/3",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Replay', style: TextStyle(fontSize: 30)),
              onPressed: () {
                scoreCount = 0;
                Navigator.of(context)
                    .pushNamed('/first_question', arguments: scoreCount);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.pink[600],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: const TextStyle(
                      fontSize: 27, fontWeight: FontWeight.bold),
                  fixedSize: const Size(240, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          )
        ],
      ),
    ));
  }
}
