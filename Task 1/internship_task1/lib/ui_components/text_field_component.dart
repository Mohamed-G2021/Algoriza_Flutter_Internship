import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final String fieldHintText;
  final FontWeight fieldHintTextFont;
  final Color fieldHintTextColor;
  const TextFieldComponent(
      this.fieldHintText, this.fieldHintTextFont, this.fieldHintTextColor,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: fieldHintText,
        hintStyle:
            TextStyle(fontWeight: fieldHintTextFont, color: fieldHintTextColor),
      ),
    );
  }
}
