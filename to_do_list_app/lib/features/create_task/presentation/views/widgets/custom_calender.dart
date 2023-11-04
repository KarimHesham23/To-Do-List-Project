import 'package:cr_calendar/cr_calendar.dart';
import 'package:flutter/material.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  CrCalendarController controller = CrCalendarController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("2022"),
                SizedBox(
                  height: 5,
                ),
                Text("December")
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.arrow_back_ios),
                ),
                const SizedBox(
                  width: 26,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
