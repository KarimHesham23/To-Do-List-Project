import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/icon_user_item.dart';

class IconsListView extends StatefulWidget {
  const IconsListView({super.key});

  @override
  State<IconsListView> createState() => _IconsListViewState();
}

class _IconsListViewState extends State<IconsListView> {
  @override
  void initState() {
    getIt.get<SharedPreferences>().setInt(knumberIcon, 1);
    super.initState();
  }

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
            onTap: () async {
              actiavteCounter = index;
              await getIt
                  .get<SharedPreferences>()
                  .setInt(knumberIcon, index + 1);
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
