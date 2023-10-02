import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/sign_in_dialog.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({super.key, required this.width});
  final double width;

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Animation<double> _curve;
  @override
  void initState() {
    initalAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) => Container(
            width: _animation.value,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPSecondryColor,
              gradient: const LinearGradient(
                colors: [
                  kPSecondryColor,
                  Colors.white,
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            signIn(context);
          },
          child: Container(
            width: widget.width,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              border: Border.all(
                color: kPSecondryColor,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_forward,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "start",
                    style: Styles.logoTextSyle,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  void signIn(BuildContext context) {
    _controller.forward();

    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        showGeneralDialog(
          barrierDismissible: true,
          barrierLabel: "Sign In",
          context: context,
          pageBuilder: (context, animation, secondaryAnimation) {
            return const SignInDialog();
          },
        );
      },
    );
    Future.delayed(
      const Duration(
        milliseconds: 580,
      ),
      () {
        _controller.reset();
      },
    );
  }

  void initalAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeInCubic);
    _animation = Tween(begin: 0.0, end: widget.width).animate(_curve);
  }
}
