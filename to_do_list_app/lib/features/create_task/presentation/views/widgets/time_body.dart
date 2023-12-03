import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/data/models/time_model.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_action_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_time_picker.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/fast_access_time.dart';

class TimeDialogBody extends StatefulWidget {
  const TimeDialogBody({super.key});

  @override
  State<TimeDialogBody> createState() => _TimeDialogBodyState();
}

class _TimeDialogBodyState extends State<TimeDialogBody> {
  int activeCounter = 0;
  List<TimeModel> fastTimes = [
    TimeModel(hours: "00", minutes: "00", dayCycle: "00"),
    TimeModel(hours: "02", minutes: "00", dayCycle: "AM"),
    TimeModel(hours: "04", minutes: "00", dayCycle: "AM"),
    TimeModel(hours: "06", minutes: "00", dayCycle: "AM"),
    TimeModel(hours: "08", minutes: "00", dayCycle: "AM"),
    TimeModel(hours: "10", minutes: "00", dayCycle: "AM"),
    TimeModel(hours: "02", minutes: "00", dayCycle: "PM"),
    TimeModel(hours: "04", minutes: "00", dayCycle: "PM"),
    TimeModel(hours: "06", minutes: "00", dayCycle: "PM"),
    TimeModel(hours: "08", minutes: "00", dayCycle: "PM"),
    TimeModel(hours: "10", minutes: "00", dayCycle: "PM"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Set Time",
                style: Styles.styleText16,
              ),
              Image.asset(
                "assets/icons/time.png",
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(
              height: 10,
            ),
          ),
          Text(
            "Type in Time",
            style: Styles.styleText12.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomTimePicker(),
          const Expanded(
            child: SizedBox(
              height: 18,
            ),
          ),
          GridView.builder(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.3,
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: 11,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return FastAccessTime(
                onTap: () {
                  activeCounter = index;
                  setState(() {});
                },
                active: activeCounter == index,
                content: fastTimes[index],
              );
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomActionButton(
                contentButton: "Cancel",
                checkFill: false,
                width: 90,
                height: 42,
                onTap: () {},
              ),
              const SizedBox(
                width: 10,
              ),
              CustomActionButton(
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
