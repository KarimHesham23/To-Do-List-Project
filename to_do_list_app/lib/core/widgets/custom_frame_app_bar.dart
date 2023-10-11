import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class CustomFrameAppBar extends StatelessWidget {
  const CustomFrameAppBar({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: height * 0.112,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kSpecialColor, // Shadow color
              offset: Offset(0, 2),
            )
          ],
          color: kSecondaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: child,
      ),
    );
  }
}
