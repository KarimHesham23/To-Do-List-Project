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
    return Stack(
      children: [
        const BackgroundSection(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsApp.icon),
                Text(
                  "DoItNow",
                  style: Styles.logoTextSyle
                      .copyWith(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "A to-do list is your roadmap to success, keeping you on track and ensuring you never lose sight of your goals. Embrace its power and watch your productivity soar.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                AnimatedButton(
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
