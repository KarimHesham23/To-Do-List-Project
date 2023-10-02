import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/routes.dart';

void main() {
  runApp(const DoItNow());
}

class DoItNow extends StatelessWidget {
  const DoItNow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
