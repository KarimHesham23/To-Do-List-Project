import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/widgets/tasks_item.dart';

class TasksExpansionTile extends StatefulWidget {
  const TasksExpansionTile({super.key, required this.titleTasks});
  final String titleTasks;

  @override
  State<TasksExpansionTile> createState() => _TasksExpansionTileState();
}

class _TasksExpansionTileState extends State<TasksExpansionTile> {
  bool expanded = false;
  bool expandedText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Theme(
        data: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
          highlightColor: kSecondaryColor,
          splashColor: kSecondaryColor,
        ),
        child: ExpansionTile(
          childrenPadding: EdgeInsets.zero,
          title: Text(
            widget.titleTasks,
            style: Styles.styleText14,
          ),
          trailing: Icon(
            expanded
                ? CupertinoIcons.chevron_up_circle
                : CupertinoIcons.chevron_down_circle,
            size: 18,
          ),
          onExpansionChanged: (value) {
            setState(() {
              expanded = value;
              expandedText = false;
            });
          },
          backgroundColor: kSecondaryColor,
          collapsedBackgroundColor: kSecondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          collapsedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          iconColor: Colors.white,
          collapsedIconColor: Colors.white,
          textColor: Colors.white,
          children: childrenWidgets,
        ),
      ),
    );
  }

  List<Widget> get childrenWidgets {
    return [
      Container(
        height: 10,
        color: kPrimaryColor,
      ),
      for (var i = 0; i < (expandedText ? 10 : 3); i++) const TasksItem(),
      if (10 > 3)
        Container(
          color: kPrimaryColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    expandedText = !expandedText;
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      expandedText ? 'Show Less' : 'Show More',
                      style: Styles.styleText12.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Icon(
                      expandedText
                          ? CupertinoIcons.chevron_up_circle
                          : CupertinoIcons.chevron_down_circle,
                      color: Colors.white,
                      size: 18,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    ];
  }
}
