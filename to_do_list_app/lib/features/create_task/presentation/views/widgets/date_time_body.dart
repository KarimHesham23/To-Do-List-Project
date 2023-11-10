import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_action_container.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_calender.dart';

class DateTimeBody extends StatelessWidget {
  const DateTimeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomCalender(),
          const SizedBox(
            height: 32,
          ),
          CustomActionContainer(
              onTap: () {},
              icon: Icons.schedule_outlined,
              text: "Time",
              trailText: "No"),
          const SizedBox(
            height: 10,
          ),
          CustomActionContainer(
              onTap: () {},
              icon: Icons.notifications_outlined,
              text: "Reminder",
              trailText: "No"),
          const SizedBox(
            height: 10,
          ),
          CustomActionContainer(
              onTap: () {},
              icon: Icons.repeat_outlined,
              text: "Repeat",
              trailText: "No Repeat"),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                  contentButton: "Cancel",
                  checkFill: false,
                  width: 90,
                  height: 42,
                  onTap: () {}),
              const SizedBox(
                width: 10,
              ),
              CustomButton(
                contentButton: "Done",
                checkFill: true,
                width: 90,
                height: 42,
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
