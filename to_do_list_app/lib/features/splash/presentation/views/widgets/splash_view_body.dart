import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Image.asset(
          AssetsApp.icon,
          height: 181,
          width: 181,
        ),
        Text(
          "DO IT NOW",
          style: Styles.logoTextSyle.copyWith(
            fontSize: 34,
          ),
        ),
        Text(
          "YOUR TASKS, YOUR WAY",
          style: Styles.logoTextSyle,
        ),
      ],
    );
  }
}
