import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/action_button_section.dart';
import 'package:to_do_list_app/features/create_task/presentation/views/widgets/custom_form_text_filed.dart';

class CreateTaskBody extends StatefulWidget {
  const CreateTaskBody({super.key});

  @override
  State<CreateTaskBody> createState() => _CreateTaskBodyState();
}

class _CreateTaskBodyState extends State<CreateTaskBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const Spacer(),
                      ActionButtonsSection(
                        setTap: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            context.pop();
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
            ),
          ),
        );
      },
    );
  }
}
