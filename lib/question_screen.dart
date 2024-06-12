import 'package:flutter/material.dart';
import 'package:adv_flutter/answer_button.dart';
import 'package:adv_flutter/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var index = 0;
  void clickOnButton() {
    setState(() {
      index = index + 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[index];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                  color: Color.fromARGB(240, 248, 244, 244), fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffleList().map((e) {
              return AnswerButton(
                answerText: e,
                onTap: clickOnButton,
              );
            }),
          ],
        ),
      ),
    );
  }
}
