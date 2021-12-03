import 'package:quiz_app/models/question.dart';

class QuestionData {
  final List<Question> questions = [
    Question(
        id: 1,
        question: "What's nanan",
        falseOptionOne: "hi",
        falseOptionTwo: "hii",
        falseOptionThree: "hiii",
        trueAnswer: "go away"),
    Question(
        id: 2,
        question: "What's nanan2",
        falseOptionOne: "hi2",
        falseOptionTwo: "hii2",
        falseOptionThree: "hiii2",
        trueAnswer: "go away2"),
    Question(
        id: 3,
        question: "What's nanan3",
        falseOptionOne: "hi3",
        falseOptionTwo: "hii3",
        falseOptionThree: "hiii3",
        trueAnswer: "go away3")
  ];
}
