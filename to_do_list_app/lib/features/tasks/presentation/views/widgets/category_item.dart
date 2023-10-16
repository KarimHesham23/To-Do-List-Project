import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      height: 70,
      width: 154,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: const GradientBoxBorder(
          gradient: LinearGradient(
            begin: Alignment(-1, -2), // Start from top-left corner
            end: Alignment(0, 2),
            colors: [
              Color(0xffF44A7F),
              Colors.transparent,
            ],
          ),
          width: 1.3,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.list_alt_outlined,
            size: 20,
            color: Color(0xffF44A7F),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "All Tasks",
            style: Styles.styleText14.copyWith(
              color: const Color(0xffF44A7F),
            ),
          ),
        ],
      ),
    );
  }
}
