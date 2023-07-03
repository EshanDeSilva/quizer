import 'package:flutter/material.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 60, 8, 120),
                Color.fromARGB(255, 85, 9, 137),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen != 'questions-screen'
              ? StartScreen(switchScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
