import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  // Data Members
  final String imagePath;

  // Constructors
  const ImageContainer(this.imagePath, {super.key});
  const ImageContainer.one({super.key})
      : imagePath = "assets/images/appLogo.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 63),
      child: Image.asset(
        imagePath,
        width: 250,
      ),
    );
  }
}
