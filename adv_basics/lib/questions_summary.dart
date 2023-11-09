import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(children: [
                QuestionIdentifier(
                  questionIndex: data['question_index'] as int,
                  isCorrectAnswer:
                      data['user_answer'] == data['correct_answer'],
                ),
                Expanded(
                  child: Column(children: [
                    Text('문제: ${data['question']}'),
                    const SizedBox(height: 5),
                    Text(
                      '풀이: ${data['user_answer']}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      '정답: ${data['correct_answer']}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ]),
                )
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
