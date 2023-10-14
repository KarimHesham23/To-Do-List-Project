import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/core/utils/get_locator.dart';
import 'package:to_do_list_app/core/utils/routes.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_cubit.dart';

void main() {
  setupLocator();
  runApp(const DoItNow());
}

class DoItNow extends StatelessWidget {
  const DoItNow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ViewsCubit(pageController: getIt.get<PageController>()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoute.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
