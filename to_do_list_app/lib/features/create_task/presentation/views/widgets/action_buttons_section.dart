import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/helpers/function.dart';
import 'package:to_do_list_app/core/widgets/create_animate_dialog.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_action_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/date_time_body.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key, required this.setTap});
  final void Function() setTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomActionButton(
          contentButton: "Category",
          checkFill: false,
          width: 106,
          height: 30,
          onTap: () {},
        ),
        CustomActionButton(
          contentButton: "Date & Time",
          checkFill: false,
          width: 106,
          height: 30,
          onTap: () {
            AppFuctions.createGeneralDialog(
              context,
              barrierLabel: "date and time",
              dialogWidget: const CreateAnimatedDialog(
                dialogBody: DateTimeBody(),
              ),
            );
          },
        ),
        CustomActionButton(
          contentButton: "Set",
          checkFill: true,
          width: 76,
          height: 30,
          onTap: setTap,
        ),
      ],
    );
  }
}
