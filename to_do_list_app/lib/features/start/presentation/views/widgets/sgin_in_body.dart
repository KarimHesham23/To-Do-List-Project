import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/utils/styles.dart';
import 'package:to_do_list_app/features/start/presentation/views/widgets/sign_in_form.dart';

class SginInBody extends StatefulWidget {
  const SginInBody({super.key});

  @override
  State<SginInBody> createState() => _SginInBodyState();
}

class _SginInBodyState extends State<SginInBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Sign In",
              style: Styles.logoTextSyle
                  .copyWith(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const SginInForm()
          ],
        ),
      ),
    );
  }
}
