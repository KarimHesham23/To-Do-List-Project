import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.contentButton,
      required this.checkFill,
      required this.width,
      required this.onTap});
  final String contentButton;
  final bool checkFill;
  final double width;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30,
        width: width,
        decoration: BoxDecoration(
          color: checkFill ? kSpecialColor : kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kSpecialColor),
        ),
        child: Center(
          child: Text(
            contentButton,
            style: Styles.styleText12.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
