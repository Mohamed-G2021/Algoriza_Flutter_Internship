import 'package:flutter/material.dart';
import 'package:internship_task1/ui_components/on_boarding_image.dart';
import 'package:internship_task1/ui_components/rich_text_component.dart';
import 'package:internship_task1/ui_components/button_component.dart';
import 'package:internship_task1/ui_components/text_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage2 extends StatelessWidget {
  static const routeName = '/on_boarding_page';
  const OnBoardingPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: const [
                Expanded(
                  child: SizedBox(),
                ),
                ButtonComponent(
                  'Skip',
                  30.0,
                  60.0,
                  Color(0xfffaf2e7),
                  FontWeight.w500,
                  Colors.black,
                ),
              ],
            ),
            const RichTextComponent('7', Colors.orange, 'Krave', Colors.teal,
                36.0, FontWeight.w500),
            const OnBoardingImage('assets/images/onboarding image2.png'),
            const TextComponent(
                'Buy Any Food from your \n     favorite restaurant',
                24.0,
                FontWeight.bold,
                Colors.black),
            const TextComponent(
                'We are constantly adding your favourite \nrestaurant throughout the territory and \n   around your area carefully selected',
                16.0,
                FontWeight.w500,
                Colors.grey),
            SmoothPageIndicator(
                controller: controller, // PageController
                count: 3,
                effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.orange), // your preferred effect
                onDotClicked: (index) {}),
            ButtonComponent(
                'Get Started',
                50,
                MediaQuery.of(context).size.width,
                Colors.teal,
                FontWeight.w500,
                Colors.white),
            const RichTextComponent("Don't have an account?", Colors.black,
                ' Sign Up', Colors.teal, 18.0, FontWeight.w500),
          ],
        ),
      )),
    );
  }
}
