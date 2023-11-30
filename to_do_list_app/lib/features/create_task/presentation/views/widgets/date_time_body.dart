import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/helpers/function.dart';
import 'package:to_do_list_app/core/widgets/create_animate_dialog.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_action_container.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_calender.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/time_body.dart';

class DateTimeBody extends StatelessWidget {
  const DateTimeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 12,
        right: 12,
        bottom: 15,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: CustomCalender(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 32,
                ),
                CustomActionContainer(
                  onTap: () {
                    AppFuctions.createGeneralDialog(
                      context,
                      barrierLabel: "Time",
                      dialogWidget: const CreateAnimatedDialog(
                        dialogBody: TimeDialogBody(),
                      ),
                    );
                  },
                  icon: Icons.schedule_outlined,
                  text: "Time",
                  trailText: "No",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomActionContainer(
                  onTap: () {},
                  icon: Icons.notifications_outlined,
                  text: "Reminder",
                  trailText: "No",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomActionContainer(
                  onTap: () {},
                  icon: Icons.repeat_outlined,
                  text: "Repeat",
                  trailText: "No Repeat",
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      contentButton: "Cancel",
                      checkFill: false,
                      width: 90,
                      height: 42,
                      onTap: () {},
                    ),
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
          )
        ],
      ),
    );
  }
}
