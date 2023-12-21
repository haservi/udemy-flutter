import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.data,
  });

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final bool isCorrectAnswer = data['user_answer'] == data['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            questionIndex: data['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('문제: ${data['question']}'),
                    const SizedBox(height: 5),
                    Text(
                      '풀이: ${data['user_answer']}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '정답: ${data['correct_answer']}',
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
