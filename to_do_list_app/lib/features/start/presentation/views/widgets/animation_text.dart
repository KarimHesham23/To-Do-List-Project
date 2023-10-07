import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.teal,
    Colors.indigo,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 100,
      animatedTexts: [
        ColorizeAnimatedText(
          'Welcome',
          textStyle: Styles.logoTextSyle
              .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
          colors: colorizeColors,
        ),
        ColorizeAnimatedText(
          'To',
          textStyle: Styles.logoTextSyle
              .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
          colors: colorizeColors,
        ),
        ColorizeAnimatedText(
          'DoItNow',
          textStyle: Styles.logoTextSyle
              .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
          colors: colorizeColors,
        ),
      ],
      isRepeatingAnimation: true,
    );
  }
}
