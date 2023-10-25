import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:to_do_list_app/constants.dart';

class CustomFrameContainer extends StatelessWidget {
  const CustomFrameContainer({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    this.borderColor = kSpecialColor,
    this.margin,
  });
  final Widget child;
  final double height;
  final double width;
  final Color borderColor;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              begin: const Alignment(-1, -1),
              end: const Alignment(1, 1),
              colors: [
                borderColor,
                Colors.transparent,
              ],
            ),
            width: 1.2,
          ),
        ),
        child: child);
  }
}
