import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});
  static String id = "task view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(AssetsApp.userIcon),
              const SizedBox(
                width: 40,
              ),
              Text(
                getIt.get<SharedPreferences>().getString(kUserName)!,
                style: Styles.styleText18,
              )
            ],
          )
        ],
      ),
    );
  }
}
