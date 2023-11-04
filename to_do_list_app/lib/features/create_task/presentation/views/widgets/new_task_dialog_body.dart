import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/action_button_section.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_form_text_filed.dart';

class NewTaskDialogBody extends StatefulWidget {
  const NewTaskDialogBody({super.key});

  @override
  State<NewTaskDialogBody> createState() => _NewTaskDialogBodyState();
}

class _NewTaskDialogBodyState extends State<NewTaskDialogBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Create New Tasks",
                style: Styles.styleText16,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomFormTextFiled(
                onSaved: (p0) {
                  title = p0;
                },
                hintText: "Title",
              ),
              CustomFormTextFiled(
                onSaved: (p0) {
                  content = p0;
                },
                hintText: "Content",
              ),
              const SizedBox(
                height: 32,
              ),
              ActionButtonsSection(
                setTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.of(context).pop();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
