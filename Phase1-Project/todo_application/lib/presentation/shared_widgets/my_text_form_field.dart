import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? textController;
  final String? errorMessage;
  final VoidCallback? onPressed;

  const MyTextFormField(
      {this.textController,
      this.hintText,
      this.errorMessage,
      this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      onTap: onPressed,
      decoration: InputDecoration(
        filled: true,
        /*return this please*/
        //   fillColor: const Color(0xFFf9f9f9),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
        errorText: errorMessage,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
