import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    var currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            currentQuestion.answers[0],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[1],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[2],
            () {},
          ),
          AnswerButton(
            currentQuestion.answers[3],
            () {},
          ),
        ],
      ),
    );
  }
}
