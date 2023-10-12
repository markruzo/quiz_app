import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final question = data['question'] as String? ?? '';
            final correctAnswer = data['correct_answer'] as String? ?? '';
            final userAnswer = data['user_answers'] as String? ?? '';

            return ListTile(
              title: Text('Question: $question'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your Answer: $userAnswer'),
                  Text('Correct Answer: $correctAnswer'),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
