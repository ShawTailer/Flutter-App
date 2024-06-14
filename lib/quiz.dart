import 'package:flutter/material.dart';
import 'package:adv_flutter/startscreen.dart';
import 'package:adv_flutter/question_screen.dart';
import 'package:adv_flutter/data/question.dart';
import 'package:adv_flutter/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}
class _QuizState extends State<Quiz> {
  var activeScreen = 'Start-screen';
  List<String> listClickAns =[];
  void switchScreen() {
    setState(() {
      activeScreen = 'Question-screen';
    });
  }
  void selectedAnswer(String ans){
    listClickAns.add(ans);
    if (listClickAns.length == questions.length){
      setState(() {
        activeScreen='Result-screen';
      });
    }
  }
  void returnStartScreen(){
    setState(() {
      activeScreen = 'Start-screen';
      listClickAns=[];
    });
  }
  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'Question-screen') {
      screenWidget =  QuestionScreen(onSelectAnswer: selectedAnswer);
    }
    if (activeScreen == 'Result-screen') {
      screenWidget =   ResultScreen(answerList: listClickAns,returnStartScreen: returnStartScreen);
    }
    if (activeScreen == 'Start-screen') {
      screenWidget =   StartScreen(switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(224, 152, 54, 232),
        body: screenWidget,
      ),
    );
  }
}
