import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/widgets/custom_app_bar.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}
