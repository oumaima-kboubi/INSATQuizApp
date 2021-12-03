import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_page.dart';
import 'package:quiz_app/screens/question_one.dart';
import 'package:quiz_app/screens/question_three.dart';
import 'package:quiz_app/screens/question_two.dart';
import 'package:quiz_app/screens/score.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/first_question':
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => QuestionOne(scoreCount: args));
        }
        return _errorRoute();
      case '/second_question':
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => QuestionTwo(scoreCount: args));
        }
        return _errorRoute();
      case '/third_question':
        if (args is int) {
          return MaterialPageRoute(
              builder: (_) => QuestionThree(scoreCount: args));
        }
        return _errorRoute();
      case '/score':
        if (args is int) {
          return MaterialPageRoute(builder: (_) => Score(scoreCount: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(child: Text('ERROR')),
      );
    });
  }
}
