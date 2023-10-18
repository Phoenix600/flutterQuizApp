class QuizQuestion {
  // data members
  final String text;
  final List<String> answers;

  // Constructors
  const QuizQuestion(this.text, this.answers);

  // shuffling the list of answers
  List<String> shuffleList() {
    // creating the copy of the list
    final shuffledList = List.of(answers);
    // Shuffling the list items inplace
    shuffledList.shuffle();
    // returning the list
    return shuffledList;
  }
}
