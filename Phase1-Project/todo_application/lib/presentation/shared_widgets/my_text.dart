import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String writtenText;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;

  const MyText({
    Key? key,
    required this.writtenText,
    this.textColor,
    this.textSize,
    this.textWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      writtenText,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
      ),
    );
  }
}
