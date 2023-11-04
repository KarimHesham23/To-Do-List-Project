import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.contentButton,
      required this.checkFill,
      required this.width,
      required this.onTap,
      required this.height});
  final String contentButton;
  final bool checkFill;
  final double width;
  final double height;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: checkFill ? kSpecialColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kSpecialColor),
        ),
        child: Center(
          child: Text(
            contentButton,
            style: Styles.styleText14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
