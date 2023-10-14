import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/tasks_item.dart';

class TasksDropDown extends StatefulWidget {
  const TasksDropDown({super.key});

  @override
  State<TasksDropDown> createState() => _TasksDropDownState();
}

class _TasksDropDownState extends State<TasksDropDown> {
  IconData iconBox = FontAwesomeIcons.circleChevronDown;
  IconData iconWord = FontAwesomeIcons.angleDown;
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
              if (iconBox == FontAwesomeIcons.circleChevronDown) {
                iconBox = FontAwesomeIcons.circleChevronUp;
                seeMore = "See More";
                itemsNumber = 3;
                setState(() {});
              } else {
                iconBox = FontAwesomeIcons.circleChevronDown;
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
                    iconBox,
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
                      iconWord = FontAwesomeIcons.angleUp;

                      setState(() {});
                    } else {
                      seeMore = "See More";
                      iconWord = FontAwesomeIcons.angleDown;
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
                      Icon(
                        iconWord,
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

// class TasksDropDownfiled extends StatelessWidget {
//   const TasksDropDownfiled({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         if (iconBox == FontAwesomeIcons.circleChevronDown) {
//           iconBox = FontAwesomeIcons.circleChevronUp;
//           seeMore = "See More";
//           itemsNumber = 3;
//           setState(() {});
//         } else {
//           iconBox = FontAwesomeIcons.circleChevronDown;
//           itemsNumber = 0;
//           setState(() {});
//         }
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         height: 40,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: kSecondaryColor,
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "Previous Tasks",
//               style: Styles.styleText14,
//             ),
//             const Spacer(),
//             Icon(
//               iconBox,
//               size: 18,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
