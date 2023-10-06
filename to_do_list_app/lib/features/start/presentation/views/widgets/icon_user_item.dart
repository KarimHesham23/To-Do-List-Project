import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';

class IconUserItem extends StatelessWidget {
  const IconUserItem(
      {super.key, required this.isActive, required this.iconPath});
  final bool isActive;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: isActive
          ? CircleAvatar(
              radius: 36,
              backgroundColor: kSecondaryColor,
              child: CircleAvatar(
                radius: 32,
                child: Image.asset(iconPath),
              ),
            )
          : CircleAvatar(
              radius: 32,
              child: Image.asset(iconPath),
            ),
    );
  }
}
