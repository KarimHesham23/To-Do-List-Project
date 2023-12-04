import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/create_task/data/models/time_model.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_action_button.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/fast_access_time.dart';

class TimeBodyBottomSection extends StatefulWidget {
  const TimeBodyBottomSection({super.key});

  @override
  State<TimeBodyBottomSection> createState() => _TimeBodyBottomSectionState();
}

class _TimeBodyBottomSectionState extends State<TimeBodyBottomSection> {
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
    return SliverToBoxAdapter(
      child: Column(
        children: [
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
