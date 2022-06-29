import 'package:flutter/material.dart';
import 'package:internship_task1/pages/login_page.dart';
import 'package:internship_task1/pages/on_boarding_page.dart';
import 'package:internship_task1/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.teal),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView(
            controller: controller,
            children: const [OnBoardingPage(), LoginPage(), RegisterPage()],
          ),
        ));
  }
}
