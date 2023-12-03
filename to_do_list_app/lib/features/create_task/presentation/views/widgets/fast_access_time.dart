import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/data/models/time_model.dart';

class FastAccessTime extends StatelessWidget {
  const FastAccessTime({
    super.key,
    required this.active,
    required this.onTap,
    required this.content,
  });
  final bool active;
  final TimeModel content;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 30,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: active ? kSpecialColor : kPrimaryColor),
        ),
        child: Center(
          child: Text(
            content.hours == "00"
                ? "No Time"
                : "${content.hours}:${content.minutes} ${content.dayCycle}",
            style: Styles.styleText12.copyWith(
              color: active ? Colors.white : const Color(0xff777E99),
            ),
          ),
        ),
      ),
    );
  }
}
