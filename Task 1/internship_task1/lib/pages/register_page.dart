import 'package:flutter/material.dart';
import 'package:internship_task1/ui_components/button_component.dart';
import 'package:internship_task1/ui_components/rich_text_component.dart';
import 'package:internship_task1/ui_components/text_component.dart';
import 'package:internship_task1/ui_components/text_field_component.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register_page';
  const RegisterPage({Key? key}) : super(key: key);

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
                    TextComponent(
                        'Register', 36, FontWeight.w400, Colors.black),
                    TextComponent('Help', 17, FontWeight.normal, Colors.blue),
                  ],
                ),
                const TextComponent('Email', 18, FontWeight.w400, Colors.black),
                const TextFieldComponent(
                    'Eg. example@email.com', FontWeight.w300, Colors.grey),
                const TextComponent(
                    'Phone Number', 18, FontWeight.w400, Colors.black),
                const TextFieldComponent(
                    'Eg. 812345678', FontWeight.w300, Colors.grey),
                const TextComponent(
                    'Password', 18, FontWeight.w400, Colors.black),
                const TextFieldComponent(
                    'Password', FontWeight.w300, Colors.grey),
                ButtonComponent(
                    'Register',
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
                  child: RichTextComponent("Have any account?", Colors.black,
                      ' Sign in here', Colors.blue, 18.0, FontWeight.normal),
                ),
                const Center(
                  child: RichTextComponent(
                      "By registering your account, you agree to our",
                      Colors.black,
                      ' terms and conditions',
                      Colors.blue,
                      16.0,
                      FontWeight.normal),
                ),
              ]),
        ),
      ),
    );
  }
}
