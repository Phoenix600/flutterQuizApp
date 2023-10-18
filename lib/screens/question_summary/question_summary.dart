import 'package:flutter/material.dart';
import 'package:quizzapp/screens/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, this.onRestart, {super.key});

  // Data Members
  final List<Map<String, Object>> summaryData;
  final void Function() onRestart;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                // Text(
                //   ((data['question_index'] as int) + 1).toString(),
                // ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      // Text((data['question'] as String)),
                      // const SizedBox(height: 5),
                      // Text((data['user_answer'] as String)),
                      // Text((data['correct_answer'] as String)),
                      SummaryItem(
                        map: data,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
