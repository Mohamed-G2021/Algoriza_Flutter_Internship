import 'package:flutter/material.dart';
import 'package:internship_task1/ui_components/button_component.dart';
import 'package:internship_task1/ui_components/rich_text_component.dart';
import 'package:internship_task1/ui_components/text_component.dart';
import 'package:internship_task1/ui_components/text_field_component.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/register_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextComponent('Welcome to Fashion Daily', 16,
                    FontWeight.w400, Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextComponent('Sign In', 36, FontWeight.w400, Colors.black),
                    TextComponent('Help', 17, FontWeight.normal, Colors.blue),
                  ],
                ),
                const TextComponent(
                    'Phone Number', 18, FontWeight.w400, Colors.black),
                const TextFieldComponent(
                    'Eg. 812345678', FontWeight.w300, Colors.grey),
                ButtonComponent(
                    'Sign In',
                    50,
                    MediaQuery.of(context).size.width,
                    Colors.blue,
                    FontWeight.w500,
                    Colors.white),
                const Center(
                    child: TextComponent(
                        'Or', 18, FontWeight.normal, Colors.grey)),
                ButtonComponent(
                    'Sign in with Google',
                    50,
                    MediaQuery.of(context).size.width,
                    Colors.white,
                    FontWeight.w500,
                    Colors.blue),
                const Center(
                  child: RichTextComponent(
                      "Don't Have any account?",
                      Colors.black,
                      ' Register here',
                      Colors.blue,
                      18.0,
                      FontWeight.normal),
                ),
                const Center(
                    child: TextComponent(
                        'Use the application according to policy rules. Any \n  kinds of violations will subject to sanctions.',
                        14,
                        FontWeight.w400,
                        Colors.grey))
              ]),
        ),
      ),
    );
  }
}
