import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/core/widgets/custom_bottom_bar_item.dart';

class CustomBottomBarBody extends StatelessWidget {
  const CustomBottomBarBody({super.key, required this.viewName});
  final String viewName;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBottpmBarItem(
          active: viewName == "Menu",
          icon: Icons.dataset_outlined,
          itemName: "Menu",
        ),
        CustomBottpmBarItem(
          active: viewName == "Tasks",
          icon: Icons.task_outlined,
          itemName: "Tasks",
        ),
        CustomBottpmBarItem(
          active: viewName == "Calendar",
          icon: Icons.calendar_today_outlined,
          itemName: "Calendar",
        ),
        CustomBottpmBarItem(
          active: viewName == "Mine",
          icon: FontAwesomeIcons.user,
          itemName: "Mine",
        ),
      ],
    );
  }
}
