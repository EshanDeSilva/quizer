import 'package:flutter/material.dart';

class QuizeStart extends StatefulWidget {
  const QuizeStart({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizeStarter();
  }
}

class _QuizeStarter extends State<QuizeStart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Color.fromARGB(255, 220, 175, 251),
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 85, 9, 137),
            ),
          ),
          onPressed: () {},
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
