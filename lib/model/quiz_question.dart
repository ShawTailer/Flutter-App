class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final  String text;
  final List<String> answers;

  List<String> shuffleList(){
    final listneedshuffle = List.of(answers);
    listneedshuffle.shuffle();
    return listneedshuffle;
  }
}