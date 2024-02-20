class QuizQuestions {
  const QuizQuestions(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> getShuffeldAnswres() {
    final shuffeldlist = List.of(answer);
    shuffeldlist.shuffle();
    return shuffeldlist;
  }
}
