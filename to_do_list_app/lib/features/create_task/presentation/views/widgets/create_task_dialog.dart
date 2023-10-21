import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_container.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/create_task_body.dart';

class CreateTaskDialog extends StatelessWidget {
  const CreateTaskDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomFrameContainer(
        height: 266,
        width: 328,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: CreateTaskBody(),
        ),
      ),
    );
  }
}
