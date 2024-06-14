import 'package:adv_flutter/data/question.dart';
import 'package:flutter/material.dart';
import 'package:adv_flutter/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.answerList, required this.returnStartScreen});
  final List<String> answerList;
  final void Function() returnStartScreen;
  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < answerList.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': answerList[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final list = getSummaryData();
    final toTalQues = list.length;
    final numCorrectAns = list.where((data) {
      return data['correct-answer'] == data['user-answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numCorrectAns out of $toTalQues question correctly!',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 23,
            ),
            textAlign: TextAlign.center,
          ),
          QuestionSummary(sumaryData: getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
              onPressed: returnStartScreen,
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(249, 244, 243, 246),
                  foregroundColor: const Color.fromARGB(255, 77, 3, 120),
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              icon: const Icon(Icons.remove_from_queue_outlined),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}
