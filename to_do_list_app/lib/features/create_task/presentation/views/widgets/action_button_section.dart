import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/helpers/function.dart';
import 'package:to_do_list_app/core/widgets/create_animate_dialog.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/date_time_body.dart';

class ActionButtonsSection extends StatefulWidget {
  const ActionButtonsSection({super.key, required this.setTap});
  final void Function() setTap;

  @override
  State<ActionButtonsSection> createState() => _ActionButtonsSectionState();
}

class _ActionButtonsSectionState extends State<ActionButtonsSection> {
  DateTime? beginDate;
  DateTime? endDate;

  String rangeButtonText = 'Select date';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          contentButton: "Category",
          checkFill: false,
          width: 106,
          height: 30,
          onTap: () {},
        ),
        CustomButton(
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
        CustomButton(
          contentButton: "Set",
          checkFill: true,
          width: 76,
          height: 30,
          onTap: widget.setTap,
        ),
      ],
    );
  }
}
