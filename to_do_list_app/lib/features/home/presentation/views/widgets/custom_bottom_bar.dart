import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/constants.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_cubit.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_state.dart';
import 'package:to_do_list_app/features/home/presentation/views/widgets/custom_bottom_bar_body.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: BlocBuilder<ViewsCubit, ViewsState>(
          builder: (context, state) {
            return CustomBottomBarBody(
              currentIndex: state.currentPage,
            );
          },
        ),
      ),
    );
  }
}
