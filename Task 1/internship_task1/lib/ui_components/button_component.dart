import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String buttonText;
  final double buttonHeight;
  final double buttonWidth;
  final Color buttonColor;
  final FontWeight buttonTextFont;
  final Color buttonTextColor;
  const ButtonComponent(this.buttonText, this.buttonHeight, this.buttonWidth,
      this.buttonColor, this.buttonTextFont, this.buttonTextColor,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: buttonTextFont,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
        ),
      ),
    );
  }
}
