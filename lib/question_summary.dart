import 'package:flutter/material.dart';
import 'package:adv_flutter/question_outline.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.sumaryData});
  final List<Map<String, Object>> sumaryData;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children: sumaryData.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionOutline(
                      index: ((data['index'] as int) + 1).toString()),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (data['question']).toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            (data['user-answer']).toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(248, 14, 254, 242),
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            (data['correct-answer']).toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(253, 57, 232, 4),
                                fontSize: 15),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
