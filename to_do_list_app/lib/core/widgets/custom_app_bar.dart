import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_app_bar.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool checkSearch = true;
  @override
  Widget build(BuildContext context) {
    return CustomFrameAppBar(
      child: checkSearch
          ? Row(
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
                  onTap: () {
                    checkSearch = false;
                    setState(() {});
                  },
                  child: const Icon(
                    Icons.manage_search,
                    size: 26,
                  ),
                )
              ],
            )
          : TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                filled: true,
                fillColor: kPrimaryColor,
                hintText: "Search",
                hintStyle: Styles.styleText14.copyWith(color: Colors.grey),
                prefixIcon: IconButton(
                  onPressed: () {
                    getIt.get<SharedPreferences>().clear();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 26,
                  ),
                ),
                prefixIconColor: Colors.white,
                suffixIconColor: Colors.white,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      checkSearch = true;
                    });
                  },
                  icon: const Icon(
                    Icons.manage_search,
                    size: 26,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: kSpecialColor,
                  ),
                ),
              ),
            ),
    );
  }
}
