import 'package:flutter/material.dart';

class ButtonClick extends StatefulWidget {
  const ButtonClick({super.key});
  @override
  State<ButtonClick> createState() {
    return _ButtonClickState();
  }
}

class _ButtonClickState extends State<ButtonClick> {
  int a = 5;
  void _shownum() {
    a = 6;
  }

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: _shownum,
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
          textStyle: const TextStyle(fontSize: 20)),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text('Start Quiz'),
    );
  }
}
