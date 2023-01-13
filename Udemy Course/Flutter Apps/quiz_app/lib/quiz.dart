import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Question
        Question(questions[questionIndex]["questionText"] as String),

        // Option
        ...(questions[questionIndex]['answers'] as List).map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer['score']),
              answerText: answer['text']);
        }).toList()
      ],
    );
  }
}
