import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomBottpmBarItem extends StatelessWidget {
  const CustomBottpmBarItem(
      {super.key,
      required this.icon,
      required this.itemName,
      required this.active});
  final IconData icon;
  final String itemName;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: active ? kSpecialColor : Colors.transparent,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 9,
          horizontal: 11,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 26,
              color: active ? Colors.white : const Color(0xff777E99),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              itemName,
              style: Styles.styleText12.copyWith(
                  color: active ? Colors.white : const Color(0xff777E99)),
            ),
          ],
        ),
      ),
    );
  }
}
