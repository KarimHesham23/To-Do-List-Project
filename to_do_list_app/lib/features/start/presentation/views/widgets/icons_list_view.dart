import 'package:flutter/material.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/icon_user_item.dart';

class IconsListView extends StatefulWidget {
  const IconsListView({super.key});

  @override
  State<IconsListView> createState() => _IconsListViewState();
}

class _IconsListViewState extends State<IconsListView> {
  int actiavteCounter = 0;
  List<String> allIcons() {
    List<String> icons = [];
    for (int i = 1; i < 30; i++) {
      icons.add("assets/memojis/Rectangle-$i.png");
    }
    return icons;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: allIcons().length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              actiavteCounter = index;
              setState(() {});
            },
            child: IconUserItem(
                isActive: actiavteCounter == index,
                iconPath: allIcons()[index]),
          );
        },
      ),
    );
  }
}
