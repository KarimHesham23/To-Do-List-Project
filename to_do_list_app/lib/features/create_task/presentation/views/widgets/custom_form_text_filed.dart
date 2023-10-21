import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';

class CustomFormTextFiled extends StatelessWidget {
  const CustomFormTextFiled(
      {super.key, required this.onSaved, required this.hintText});
  final void Function(String?) onSaved;
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
        hintText: hintText,
        hintStyle: Styles.styleText20.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
