import 'package:flutter/material.dart';
import 'package:oussama/quistoin_screen.dart';
import 'package:oussama/start_screen.dart';
import 'package:oussama/data/question.dart';
import 'package:oussama/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == question.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "start-screen") {
      screenWidget = QuestoinScreen(onSelectedAnswer: chooseAnswer);
    }
    ;

    if (activeScreen == 'result-screen') {
      screenWidget = ResulteScreen(chosenAnswers:selectedAnswer,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 73, 34, 140),
                Color.fromARGB(205, 84, 41, 159)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: screenWidget),
      ),
    );
  }
}
