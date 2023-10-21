import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/create_task_dialog.dart';

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
        onPressed: () {
          createTaskdDalog(context);
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

  void createTaskdDalog(BuildContext context) {
    showGeneralDialog(
      transitionDuration: const Duration(milliseconds: 500),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> animtionDialog =
            Tween(begin: const Offset(0, -1), end: const Offset(0, 0));
        return SlideTransition(
          position: animtionDialog.animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOutCubicEmphasized,
            ),
          ),
          child: child,
        );
      },
      barrierDismissible: true,
      barrierLabel: "Create task",
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return const CreateTaskDialog();
      },
    );
  }
}
