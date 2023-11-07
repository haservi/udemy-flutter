import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(children: [
                Text('문제: ${data['question']}'),
                const SizedBox(height: 5),
                Text('풀이: ${data['user_answer']}'),
                Text('정답: ${data['correct_answer']}'),
              ]),
            )
          ]);
        },
      ).toList(),
    );
  }
}
