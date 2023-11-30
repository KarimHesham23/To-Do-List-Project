import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_time_picker.dart';

class TimeDialogBody extends StatefulWidget {
  const TimeDialogBody({super.key});

  @override
  State<TimeDialogBody> createState() => _TimeDialogBodyState();
}

class _TimeDialogBodyState extends State<TimeDialogBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 12,
      ),
      child: SingleChildScrollView(
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
            const SizedBox(
              height: 40,
            ),
            const CustomTimePicker()
          ],
        ),
      ),
    );
  }
}
