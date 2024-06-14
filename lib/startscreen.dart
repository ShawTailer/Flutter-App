import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.afterClick, {super.key});
  final void Function() afterClick;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 1.0,
            child: Image.asset(
              'asset/images/quiz-logo.png',   
              width: 250,
            ),
          ),
          SizedBox.fromSize(size: const Size.fromHeight(30)),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.dmSans( 
              color: const Color.fromARGB(228, 240, 240, 239),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox.fromSize(
            size: const Size.fromHeight(30),
          ),
          OutlinedButton.icon(
            onPressed: afterClick,
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                textStyle: const TextStyle(fontSize: 20)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
