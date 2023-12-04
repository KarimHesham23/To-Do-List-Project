import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/digits_of_time.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/day_cycle_clock.dart';

class CustomTimePicker extends StatefulWidget {
  const CustomTimePicker({super.key});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  List<Widget> hourList = [];
  List<Widget> minuteList = [];
  FixedExtentScrollController hourController = FixedExtentScrollController();
  FixedExtentScrollController minuteController = FixedExtentScrollController();
  FixedExtentScrollController dayCycleClockController =
      FixedExtentScrollController();

  @override
  void initState() {
    for (int i = 0; i <= 60; i++) {
      if (i <= 11) {
        hourList.add(DigitsOfTime(number: i + 1));
      }
      minuteList.add(DigitsOfTime(number: i));
    }
    int currentHourIndex = DateTime.now().hour % 12;

    hourController =
        FixedExtentScrollController(initialItem: currentHourIndex - 1);
    minuteController =
        FixedExtentScrollController(initialItem: DateTime.now().minute);
    dayCycleClockController = FixedExtentScrollController(
        initialItem: DateTime.now().hour > 12 ? 1 : 0);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
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
        SizedBox(
          height: 121,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: ListWheelScrollView.useDelegate(
                  controller: hourController,
                  onSelectedItemChanged: (value) {},
                  useMagnifier: true,
                  magnification: 1,
                  overAndUnderCenterOpacity: 0.5,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.6,
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: hourList,
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
                child: Center(
                  child: Text(
                    ":",
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {},
                  controller: minuteController,
                  useMagnifier: true,
                  magnification: 1,
                  overAndUnderCenterOpacity: 0.5,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 1.6,
                  childDelegate: ListWheelChildLoopingListDelegate(
                    children: minuteList,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {},
                  controller: dayCycleClockController,
                  useMagnifier: true,
                  magnification: 1,
                  overAndUnderCenterOpacity: 0.5,
                  physics: const BouncingScrollPhysics(),
                  itemExtent: 40,
                  perspective: 0.005,
                  diameterRatio: 1.6,
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      if (index == 0) {
                        return const DayCycleClock(isItAm: true);
                      } else {
                        return const DayCycleClock(isItAm: false);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
