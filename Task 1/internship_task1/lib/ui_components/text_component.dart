import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String writtenText;
  final double textSize;
  final FontWeight textFont;
  final Color textColor;
  const TextComponent(
      this.writtenText, this.textSize, this.textFont, this.textColor,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      writtenText,
      style:
          TextStyle(fontSize: textSize, fontWeight: textFont, color: textColor),
    );
  }
}
