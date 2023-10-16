import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class TasksItem extends StatelessWidget {
  const TasksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kSecondaryColor,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.pending_outlined,
              color: Color(
                0xff777E99,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Title-1",
              style: Styles.styleText14,
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              "14/12/22",
              style: Styles.styleText12,
            ),
            const Spacer(
              flex: 1,
            ),
            const Icon(
              Icons.add_box_outlined,
            )
          ],
        ),
      ),
    );
  }
}
