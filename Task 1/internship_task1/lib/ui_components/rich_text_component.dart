import 'package:flutter/material.dart';

class RichTextComponent extends StatelessWidget {
  final String text1;
  final Color text1Color;
  final String text2;
  final Color text2Color;
  final double textSize;
  final FontWeight textFont;

  const RichTextComponent(this.text1, this.text1Color, this.text2,
      this.text2Color, this.textSize, this.textFont,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: textSize,
            fontWeight: textFont,
          ),
          children: [
            TextSpan(
              text: text1,
              style: TextStyle(color: text1Color),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(color: text2Color),
            )
          ]),
    );
  }
}
