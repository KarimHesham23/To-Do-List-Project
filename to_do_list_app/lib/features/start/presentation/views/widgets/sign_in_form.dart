import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_text_form_filed.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SginInForm extends StatefulWidget {
  const SginInForm({super.key});

  @override
  State<SginInForm> createState() => _SginInFormState();
}

class _SginInFormState extends State<SginInForm> {
  GlobalKey<FormState> fromKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "User name",
            style: Styles.styleText16,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextFormFiled(
            hintText: "Enter Your Name",
            prefixIcon: const Icon(
              FontAwesomeIcons.person,
              color: kSecondaryColor,
            ),
            onSaved: (p0) {},
          ),
        ],
      ),
    );
  }
}
