import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  int scoreCount = 0;
  int questionId = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "It's Quiz Time",
              style: TextStyle(fontSize: 50),
            ),
          ),
          Center(
            heightFactor: 8,
            child: ElevatedButton(
              child: const Text('Start!', style: TextStyle(fontSize: 30)),
              onPressed: () {
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
