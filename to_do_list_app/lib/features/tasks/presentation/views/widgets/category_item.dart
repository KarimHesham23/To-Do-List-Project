import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/models/category_model.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_container.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: CustomFrameContainer(
          height: 70,
          width: 145,
          borderColor: category.color,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 12,
              ),
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
          )),
    );
  }
}
