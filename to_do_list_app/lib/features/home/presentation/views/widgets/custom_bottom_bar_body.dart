import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/features/home/presentation/views/widgets/custom_bottom_bar_item.dart';

class CustomBottomBarBody extends StatelessWidget {
  const CustomBottomBarBody({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBottpmBarItem(
          viewNumber: 0,
          active: currentIndex == 0,
          icon: Icons.dataset_outlined,
          itemName: "Menu",
        ),
        CustomBottpmBarItem(
          viewNumber: 1,
          active: currentIndex == 1,
          icon: Icons.task_outlined,
          itemName: "Tasks",
        ),
        CustomBottpmBarItem(
          viewNumber: 2,
          active: currentIndex == 2,
          icon: Icons.calendar_today_outlined,
          itemName: "Calendar",
        ),
        CustomBottpmBarItem(
          viewNumber: 3,
          active: currentIndex == 3,
          icon: FontAwesomeIcons.user,
          itemName: "Mine",
        ),
      ],
    );
  }
}
