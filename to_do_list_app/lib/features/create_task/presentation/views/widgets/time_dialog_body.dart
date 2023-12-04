import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_time_picker.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/time_body_bottom_section.dart';

class TimeDialogBody extends StatelessWidget {
  const TimeDialogBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 12,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Row(
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
          ),
          SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: width > height ? 0 : height * 0.104,
              ),
              sliver: const SliverToBoxAdapter(
                child: CustomTimePicker(),
              )),
          const TimeBodyBottomSection()
        ],
      ),
    );
  }
}
