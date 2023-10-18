import 'package:flutter/material.dart';
import 'package:quizzapp/screens/questions_screen.dart';
import './start_screen.dart';
import '../data/questions.dart';
import './result_screen.dart';

class Quiz extends StatefulWidget {
  // Constructor
  const Quiz({super.key});

  // createState method
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Empty list to store the list of answers selected by the user
  final List<String> selectedAnswers = [];
  String activeScreen = "start-screen";

  // Widget? activeScreen;

  // You don't need to write here the setState Method, as the initState() gets called before
  // setState() method
  // @override
  // void initState() {
  // setState(() {});
  // activeScreen = StartScreen(switchScreen);
  // super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = "questions-screen";
    });
  }

  // storing the answer to some list
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      // selectedAnswers.clear();
      setState(() {
        activeScreen = "result-screen";
      });
    }

    // print(selectedAnswers);
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = 'questions-screen';
    });
  }

  // build method
  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
