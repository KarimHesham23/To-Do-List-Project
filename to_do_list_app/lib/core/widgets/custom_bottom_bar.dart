import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/widgets/custom_bottom_bar_body.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key, required this.viewName});
  final String viewName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: CustomBottomBarBody(
          viewName: viewName,
        ),
      ),
    );
  }
}
