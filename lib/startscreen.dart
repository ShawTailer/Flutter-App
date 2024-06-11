import 'package:flutter/material.dart';
import 'package:adv_flutter/button.dart';
class StartScreen extends StatelessWidget{
  const StartScreen ({super.key});
  @override
  Widget build(context){
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: 1.0,
                child:  Image.asset(
                  'asset/images/quiz-logo.png',
                  width: 250,
                ),
              ),
              SizedBox.fromSize(
                size: const Size.fromHeight(30)
              ),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(
                  color: Color.fromARGB(228, 240, 240, 239),
                  fontSize: 25,
                ),
              ),
              SizedBox.fromSize(
                size: const Size.fromHeight(30),
              ),
              const ButtonClick(),
            ],
          ),
        );
  }
}