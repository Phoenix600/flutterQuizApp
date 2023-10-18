import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  // Data Members
  final String buttonText;

  // Constructors
  const StyledButton(this.buttonText, {super.key});
  const StyledButton.one({super.key}) : buttonText = "Start Quiz";

  // Build Method
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 27, bottom: 27),
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: Text(buttonText)),
    );
  }
}
