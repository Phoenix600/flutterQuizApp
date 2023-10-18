import 'package:flutter/material.dart';
import 'package:quizzapp/solution/styled_button_my.dart';
import 'styled_text_my.dart';
import 'image_container_my.dart';

class GradientContainer extends StatelessWidget {
  // Data Members
  final Color primary;
  final Color secondary;

  static Alignment start = Alignment.topLeft;
  static Alignment end = Alignment.bottomRight;

  // Constructors
  const GradientContainer(this.primary, this.secondary, {super.key});
  const GradientContainer.one({super.key})
      : primary = const Color.fromARGB(255, 33, 5, 109),
        secondary = const Color.fromARGB(255, 68, 21, 149);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: start,
        end: end,
        colors: <Color>[primary, secondary],
      )),
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ImageContainer.one(),
            StyledText.one(),
            StyledButton.one(),
          ],
        ),
      ),
    );
  }
}
