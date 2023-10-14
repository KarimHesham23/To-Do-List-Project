import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_state.dart';

class ViewsCubit extends Cubit<ViewsState> {
  ViewsCubit({required this.pageController})
      : super(ViewsState(currentPage: 1));
  final PageController pageController;

  void goToTab(int page) {
    pageController.jumpToPage(page);
    emit(ViewsState(currentPage: page));
  }

  void animateToTab(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
    emit(ViewsState(currentPage: page));
  }
}
