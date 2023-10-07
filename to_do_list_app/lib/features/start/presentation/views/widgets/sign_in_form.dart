import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/assets.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/core/widgets/custom_text_form_filed.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/animation_text.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/icons_list_view.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/sgin_in_button.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/tasks_view.dart';

class SginInForm extends StatefulWidget {
  const SginInForm({super.key});

  @override
  State<SginInForm> createState() => _SginInFormState();
}

class _SginInFormState extends State<SginInForm> {
  GlobalKey<FormState> fromKey = GlobalKey();
  String? userName;
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      autovalidateMode: autoValidate,
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
            onSaved: (p0) {
              userName = p0;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Your Icon",
            style: Styles.styleText16,
          ),
          const SizedBox(
            height: 16,
          ),
          const IconsListView(),
          const SizedBox(
            height: 20,
          ),
          SginInButton(
            onPressed: () {
              validataMethod(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: TextAnimation(),
          )
        ],
      ),
    );
  }

  void validataMethod(BuildContext context) {
    if (fromKey.currentState!.validate()) {
      fromKey.currentState!.save();
      getIt.get<SharedPreferences>().setString(kUserName, userName!);
      AssetsApp.userIcon =
          "assets/memojis/Rectangle-${getIt.get<SharedPreferences>().getInt(knumberIcon)}.png";
      context.goNamed(TasksView.id);
    } else {
      setState(
        () {
          autoValidate = AutovalidateMode.always;
        },
      );
    }
  }
}
