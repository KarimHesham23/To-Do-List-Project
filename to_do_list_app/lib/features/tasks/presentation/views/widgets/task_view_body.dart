import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/widgets/custom_app_bar.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/category_expansion_tile.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/tasks_expansion_tile.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        const SliverAppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          pinned: true,
          expandedHeight: 97.0,
          flexibleSpace: CustomAppBar(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            const [
              TasksExpansionTile(
                titleTasks: "Previous Tasks",
              ),
              SizedBox(height: 20),
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
      ],
    );
  }
}
