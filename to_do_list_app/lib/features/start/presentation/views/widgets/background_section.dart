import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:to_do_list_app/core/utils/assets.dart';

class BackgroundSection extends StatefulWidget {
  const BackgroundSection({super.key});

  @override
  State<BackgroundSection> createState() => _BackgroundSectionState();
}

class _BackgroundSectionState extends State<BackgroundSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        RiveAnimation.asset(AssetsApp.shapesAnimation),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: const SizedBox(),
          ),
        ),
      ],
    );
  }
}
