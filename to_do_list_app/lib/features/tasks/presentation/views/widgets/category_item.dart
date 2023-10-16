import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/models/category_model.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: kPrimaryColor,
      child: Container(
        padding: const EdgeInsets.only(left: 12),
        height: 70,
        width: 154,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              begin: const Alignment(-1, -2), // Start from top-left corner
              end: const Alignment(0, 2),
              colors: [
                category.color,
                Colors.transparent,
              ],
            ),
            width: 1.3,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              category.icon,
              size: 20,
              color: category.color,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              category.categoryName,
              style: Styles.styleText14.copyWith(
                color: category.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
