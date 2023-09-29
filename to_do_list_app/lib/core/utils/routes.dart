import 'package:go_router/go_router.dart';
import 'package:to_do_list_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoute {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
