import 'package:flutter/material.dart';

class OnBoardingImage extends StatelessWidget {
  final String imagePath;
  const OnBoardingImage(this.imagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath);
  }
}
