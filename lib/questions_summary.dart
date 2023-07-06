import 'package:flutter/material.dart';
import 'package:second_app/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return QuestionIdentifier(data: data);
          }).toList(),
        ),
      ),
    );
  }
}
