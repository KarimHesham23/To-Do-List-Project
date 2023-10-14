import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/task_view_body.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});
  static String id = "task view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TaskViewBody(),
    );
  }
}