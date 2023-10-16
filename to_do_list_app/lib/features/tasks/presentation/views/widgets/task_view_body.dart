import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/widgets/custom_app_bar.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/category_expansion_tile.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/new_task_button.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/tasks_expansion_tile.dart';

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
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            children: const [
              TasksExpansionTile(
                titleTasks: "Previous Tasks",
              ),
              SizedBox(
                height: 20,
              ),
              TasksExpansionTile(
                titleTasks: "Today Tasks",
              ),
              SizedBox(
                height: 20,
              ),
              CategoryExpansionTile(),
              SizedBox(
                height: 20,
              ),
              TasksExpansionTile(
                titleTasks: "Completed Tasks",
              ),
            ],
          ),
        ),
        const NewTaskButton()
      ],
    );
  }
}
