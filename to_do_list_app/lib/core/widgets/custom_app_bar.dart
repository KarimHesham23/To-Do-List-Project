import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFrameAppBar(
      child: Row(
        children: [
          Image.asset(
            AssetsApp.userIcon,
            height: 45,
            width: 45,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            "Hello $kName",
            style: Styles.styleText16,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.manage_search,
              size: 26,
            ),
          )
        ],
      ),
    );
  }
}
