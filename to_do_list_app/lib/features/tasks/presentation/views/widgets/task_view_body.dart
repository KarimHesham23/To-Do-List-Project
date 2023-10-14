import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/widgets/custom_app_bar.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/new_task_button.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/tasks_drop_down.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: const [
              TasksDropDown(),
            ],
          ),
        ),
        const NewTaskButton()
      ],
    );
  }
}
