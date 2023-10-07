import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.onSaved,
    required this.prefixIcon,
    required this.hintText,
  });
  final void Function(String?) onSaved;
  final Widget prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This Filed Required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      decoration: InputDecoration(
        filled: true,
        fillColor: kFiledColorTextFiled,
        hintText: hintText,
        hintStyle: Styles.styleText14.copyWith(color: Colors.white),
        prefixIcon: prefixIcon,
        prefixIconColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xff2196F3),
          ),
        ),
      ),
    );
  }
}
