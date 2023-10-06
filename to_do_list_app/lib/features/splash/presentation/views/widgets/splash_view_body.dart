import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/start/presentation/views/start_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    initialScaleAnimation();
    navigateToStart();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        ScaleTransition(
          scale: _scaleAnimation,
          child: Image.asset(
            AssetsApp.icon,
            height: screenHeight * 0.2, // Adjust these values as needed
            width: screenWidth * 0.6,
          ),
        ),
        ScaleTransition(
          scale: _scaleAnimation,
          child: Text(
            "DoItNow",
            style: Styles.logoTextSyle.copyWith(
              fontSize: screenHeight * 0.06, // Adjust the font size
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ScaleTransition(
          scale: _scaleAnimation,
          child: Text(
            "YOUR TASKS, YOUR WAY",
            style: Styles.logoTextSyle,
          ),
        ),
      ],
    );
  }

  void initialScaleAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    Future.delayed(
      const Duration(seconds: 1),
      () {
        _controller.forward();
      },
    );
  }

  void navigateToStart() {
    Future.delayed(const Duration(seconds: 3), () {
      context.goNamed(StartView.id);
    });
  }
}
