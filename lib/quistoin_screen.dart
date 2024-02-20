import 'package:flutter/material.dart';
import 'package:oussama/answer_bottom.dart';
import 'package:oussama/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestoinScreen extends StatefulWidget {
  const QuestoinScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestoinScreen> createState() {
    return _QuestoinScreen();
  }
}

class _QuestoinScreen extends State<QuestoinScreen> {
  var currentQuestoinIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);

    setState(() {
      currentQuestoinIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = question[currentQuestoinIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.tiltWarp(
                color: const Color.fromARGB(179, 217, 199, 199),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffeldAnswres().map((answer) {
              return AnswerBottom(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer); 
                },
              ); 
            })
          ],
        ),
      ),
    );
  }
}
