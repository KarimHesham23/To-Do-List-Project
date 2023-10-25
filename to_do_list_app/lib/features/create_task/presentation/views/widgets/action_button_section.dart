import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/helpers/function.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_container.dart';
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
          onTap: () {
            AppFuctions.createGeneralDialog(context,
                barrierLabel: "date and time",
                dialogWidget: const DateTimeDialog());
          },
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

class DateTimeDialog extends StatelessWidget {
  const DateTimeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomFrameContainer(
        height: MediaQuery.of(context).size.height * 0.79,
        width: MediaQuery.of(context).size.width * 0.9,
        child: const Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SizedBox(),
        ),
      ),
    );
  }
}
