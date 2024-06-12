import 'package:flutter/material.dart';
import 'package:adv_flutter/startscreen.dart';
import 'package:adv_flutter/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'Question-screen';
    });
  }
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Question-screen') {
      screenWidget = const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(224, 152, 54, 232),
        body: screenWidget,
      ),
    );
  }
}
