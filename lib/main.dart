import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          startColor: Color.fromARGB(255, 60, 8, 120),
          endColor: Color.fromARGB(255, 85, 9, 137),
        ),
      ),
    ),
  );
}
