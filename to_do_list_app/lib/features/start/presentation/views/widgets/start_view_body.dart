import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/animation_button.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/background_section.dart';

class StartViewBody extends StatefulWidget {
  const StartViewBody({super.key});

  @override
  State<StartViewBody> createState() => _StartViewBodyState();
}

class _StartViewBodyState extends State<StartViewBody> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundSection(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetsApp.icon,
                    height: screenHeight * 0.2, // Adjust these values as needed
                    width: screenWidth * 0.6,
                  ),
                  Text(
                    "DoItNow",
                    style: Styles.logoTextSyle.copyWith(
                      fontSize: screenHeight * 0.06, // Adjust the font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "A to-do list is your roadmap to success, keeping you on track and ensuring you never lose sight of your goals. Embrace its power and watch your productivity soar.",
                    style: Styles.styleText14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AnimatedButton(width: screenWidth * 0.85),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
