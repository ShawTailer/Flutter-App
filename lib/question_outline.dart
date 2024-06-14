import 'package:flutter/material.dart';

class QuestionOutline extends StatelessWidget {
  const QuestionOutline({super.key, required this.index});
  final String index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 204, 8, 244),
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        index,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
