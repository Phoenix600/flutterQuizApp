import 'package:flutter/material.dart';
import 'package:quizzapp/screens/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.map});

  final Map<String, Object> map;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer = map['user_answer'] == map['correct_answer'];
    final int questionIndex = (map['question_index'] as int);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer, questionIndex: questionIndex),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
                (map['question'] as String),
              ),
              const SizedBox(height: 5),
              Text(
                (map['user_answer'] as String),
                style: const TextStyle(
                  color: Color.fromARGB(255, 202, 171, 252),
                ),
              ),
              Text(
                style:
                    const TextStyle(color: Color.fromARGB(255, 243, 162, 229)),
                (map['correct_answer'] as String),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ],
    );
  }
}
