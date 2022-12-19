import 'package:flutter/material.dart';
import 'package:quiz_app/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const QuizScreen(),
    );
  }
}