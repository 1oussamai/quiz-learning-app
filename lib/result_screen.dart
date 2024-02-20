import 'package:flutter/material.dart';
import 'package:oussama/data/question.dart';

class ResulteScreen extends StatelessWidget {
  const ResulteScreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summery.add(
        {
          'questoin-index': i,
          'question': question[i].text,
          'correct-answer' : question[i].answer[0],
          'user-answers' : chosenAnswers[i],
        },
      );
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('you have answred X of y question correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('we will add the result soon .... '),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('restart'))
          ],
        ),
      ),
    );
  }
}
