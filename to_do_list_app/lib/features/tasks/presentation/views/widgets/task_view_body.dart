import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_app_bar.dart';

class TaskViewBody extends StatelessWidget {
  const TaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            PreviousTasksBox(),
            SizedBox(
              height: 20,
            ),
            PreviousTasksBox(),
            SizedBox(
              height: 20,
            ),
            PreviousTasksBox(),
            SizedBox(
              height: 20,
            ),
            PreviousTasksBox(),
          ],
        ))
      ],
    );
  }
}

class PreviousTasksBox extends StatefulWidget {
  const PreviousTasksBox({super.key});

  @override
  State<PreviousTasksBox> createState() => _PreviousTasksBoxState();
}

class _PreviousTasksBoxState extends State<PreviousTasksBox> {
  IconData icon = FontAwesomeIcons.circleChevronDown;
  String seeMore = "See More";
  int itemsNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              if (icon == FontAwesomeIcons.circleChevronDown) {
                icon = FontAwesomeIcons.circleChevronUp;
                itemsNumber = 3;
                setState(() {});
              } else {
                icon = FontAwesomeIcons.circleChevronDown;
                itemsNumber = 0;
                setState(() {});
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Previous Tasks",
                    style: Styles.styleText14,
                  ),
                  const Spacer(),
                  Icon(
                    icon,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: itemsNumber,
            itemBuilder: (context, index) {
              return const TasksItem();
            },
          ),
          itemsNumber != 0
              ? GestureDetector(
                  onTap: () {
                    if (seeMore == "See More") {
                      seeMore = "See Less";
                      itemsNumber = 10;
                      setState(() {});
                    } else {
                      seeMore = "See More";
                      itemsNumber = 3;
                      setState(() {});
                    }
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        seeMore,
                        style: Styles.styleText12.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        FontAwesomeIcons.angleDown,
                        size: 18,
                      ),
                    ],
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

class TasksItem extends StatelessWidget {
  const TasksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Icons.pending,
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







// class TaskWidget extends StatefulWidget {
//   final String title;
//   final List<String> tasks;

//   TaskWidget({required this.title, required this.tasks});

//   @override
//   _TaskWidgetState createState() => _TaskWidgetState();
// }

// class _TaskWidgetState extends State<TaskWidget> {
//   bool showAllTasks = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.title,
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: showAllTasks
//               ? widget.tasks.map((task) => Text(task)).toList()
//               : widget.tasks.take(3).map((task) => Text(task)).toList(),
//         ),
//         if (widget.tasks.length > 3)
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 showAllTasks = !showAllTasks;
//               });
//             },
//             child: Text(
//               showAllTasks ? 'See Less' : 'See More',
//               style: TextStyle(color: Colors.blue),
//             ),
//           ),
//       ],
//     );
//   }
// }
