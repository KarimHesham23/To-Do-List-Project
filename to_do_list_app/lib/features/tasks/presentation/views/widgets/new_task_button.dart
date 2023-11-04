import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/helpers/function.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/create_animate_dialog.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/new_task_dialog_body.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: ElevatedButton(
        onPressed: () async {
          AppFuctions.createGeneralDialog(context,
              barrierLabel: "create task",
              dialogWidget: const CreateAnimatedDialog(
                dialogBody: NewTaskDialogBody(),
              ));
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: kSpecialColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Icon(
              Icons.add_box_outlined,
              size: 26,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Create New Task",
              style: Styles.styleText14,
            )
          ],
        ),
      ),
    );
  }
}
