import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_button.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key, required this.setTap});
  final void Function() setTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          contentButton: "Category",
          checkFill: false,
          width: 106,
          onTap: () {},
        ),
        CustomButton(
          contentButton: "Date & Time",
          checkFill: false,
          width: 106,
          onTap: () {},
        ),
        CustomButton(
          contentButton: "Set",
          checkFill: true,
          width: 76,
          onTap: setTap,
        ),
      ],
    );
  }
}
