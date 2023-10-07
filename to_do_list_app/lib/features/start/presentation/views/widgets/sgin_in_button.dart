import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class SginInButton extends StatelessWidget {
  const SginInButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: kSecondaryColor,
            minimumSize: const Size(double.infinity, 56),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ))),
        onPressed: onPressed,
        icon: const Icon(FontAwesomeIcons.arrowRight),
        label: Text(
          "Sgin in",
          style: Styles.styleText16,
        ),
      ),
    );
  }
}
