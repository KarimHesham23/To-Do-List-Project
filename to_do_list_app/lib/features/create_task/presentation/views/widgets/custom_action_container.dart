import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomActionContainer extends StatelessWidget {
  const CustomActionContainer(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.text,
      required this.trailText});
  final void Function() onTap;
  final IconData icon;
  final String text;
  final String trailText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 40,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 20,
                    color: const Color(0xffA1A1C1),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(text, style: Styles.styleText14)
                ],
              ),
              Text(trailText, style: Styles.styleText12)
            ],
          ),
        ),
      ),
    );
  }
}
