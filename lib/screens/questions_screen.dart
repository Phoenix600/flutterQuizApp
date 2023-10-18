import 'package:flutter/material.dart';
import 'package:quizzapp/models/quiz_question.dart';
import 'package:quizzapp/screens/answer_button.dart';
import '../data/questions.dart';

class QuestionScreen extends StatefulWidget {
  // Data Member
  final void Function(String answer) onSelectAnswer;

  // constructor
  const QuestionScreen(this.onSelectAnswer, {super.key});

  // create state method
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  // Method to increment the index of question
  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  // build Method
  @override
  Widget build(BuildContext context) {
    // QuizQuestion object point to the one of the QuizQuestion object from the list
    final QuizQuestion questionText = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              textAlign: TextAlign.center,
              // style: const TextStyle(
              //   fontSize: 17,
              //   color: Colors.white,
              // ),
              style: const TextStyle(
                fontSize: 27,
                color: Color.fromARGB(255, 235, 218, 252),
                fontWeight: FontWeight.bold,
              ),
              questionText.text,
            ),
            const SizedBox(
              height: 10,
            ),
            // ...questionText.answers.map((answerText) {
            //   return AnswerButton(answerText: answerText, onTap: () {});
            // }),
            ...questionText.shuffleList().map((answerText) {
              return AnswerButton(
                  answerText: answerText,
                  onTap: () {
                    answerQuestion(answerText);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
