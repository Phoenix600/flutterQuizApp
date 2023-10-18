import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Data Members
  final String heroText;

  // Constructors
  const StyledText(this.heroText, {super.key});
  const StyledText.one({super.key}) : heroText = "Learn Flutter the fun way!";

  @override
  Widget build(BuildContext context) {
    return Text(
      style: const TextStyle(
        fontSize: 17,
        color: Colors.white,
      ),
      heroText,
    );
  }
}
