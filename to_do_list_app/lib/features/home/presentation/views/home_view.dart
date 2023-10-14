import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list_app/features/home/presentation/manger/view_cubit/views_cubit.dart';
import 'package:to_do_list_app/features/home/presentation/views/widgets/custom_bottom_bar.dart';
import 'package:to_do_list_app/features/tasks/presentation/views/tasks_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "home view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: BlocProvider.of<ViewsCubit>(context).pageChange,
        controller: BlocProvider.of<ViewsCubit>(context).pageController,
        physics: const BouncingScrollPhysics(),
        children: const [
          Menu(),
          TasksView(),
          Calender(),
          Mine(),
        ],
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}

//screens
class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Menu",
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Calender",
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Mine",
          style: TextStyle(
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
