import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  // Data Members
  final Function() startQuiz;

  // Constructors
  const StartScreen(this.startQuiz, {super.key});
  const StartScreen.one(this.startQuiz, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "assets/images/appLogo.png",
            width: 200,
            color: const Color.fromARGB(190, 255, 255, 255),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80, bottom: 30),
            child: Text(
              //   style: TextStyle(
              //     color: Color.fromARGB(255, 230, 219, 248),
              //     fontSize: 21,
              //   ),
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
              ),
              "Learn Flutter the fun way!",
            ),
          ),
          OutlinedButton.icon(
            // this button will execute the code to change the screen, from StartScreen to the QuestionScreen
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
            ),
            label: const Text(
              style: TextStyle(fontSize: 17),
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
