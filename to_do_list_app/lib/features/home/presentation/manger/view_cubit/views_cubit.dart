import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_state.dart';

class ViewsCubit extends Cubit<ViewsState> {
  final PageController pageController;
  ViewsCubit({required this.pageController})
      : super(ViewsState(currentPage: 1)) {
    addPageControllerListener();
  }

  /// A boolean flag used to track if the page change is triggered by the `goToTab` method or by user interaction.
  bool check = false;

  /// Navigates to the specified `page` by animating the `pageController` to that page and emits a new `ViewsState` with the updated `currentPage`.
  void goToTab(int page) {
    check = true;
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
    emit(ViewsState(currentPage: page));
  }

  /// Listens for page changes by adding a listener to the `pageController`.
  /// If the `check` flag is not set, it emits a new `ViewsState` with the updated `currentPage`.
  void pageChange(int page) {
    if (!check) {
      emit(ViewsState(currentPage: page));
    }
  }

  /// Adds a listener to the `pageController` to check if the page is an integer value.
  /// If it is, it sets the `check` flag to false.
  void addPageControllerListener() {
    pageController.addListener(() {
      if (pageController.page == pageController.page!.toInt().toDouble()) {
        check = false;
      }
    });
  }
}
