import 'package:flutter/material.dart';
import 'package:quizzapp/data/questions.dart';
import 'package:quizzapp/screens/question_summary/question_summary.dart';

class ResultScreen extends StatelessWidget {
  // data members
  final List<String> chosenAnswers;
  final void Function() onRestart;
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      // loop body
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final int numberOfTotalQuestions = questions.length;
    final int numberOfTotalCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
            // colors: <Color>[
            //   Color.fromARGB(255, 78, 13, 151),
            //   Color.fromARGB(255, 107, 15, 168),
            // ],
            // ),
            ),
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                "You answered $numberOfTotalCorrectQuestions out of $numberOfTotalQuestions questions correctly"),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData, onRestart),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz"),
              style: TextButton.styleFrom(
                iconColor: Colors.white54,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
