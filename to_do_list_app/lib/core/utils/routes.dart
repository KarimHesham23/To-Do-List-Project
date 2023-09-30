import 'package:go_router/go_router.dart';
import 'package:to_do_list_app/features/splash/presentation/views/splash_view.dart';
import 'package:to_do_list_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:to_do_list_app/features/start/presentation/views/start_view.dart';

abstract class AppRoute {
  static const kSplashView = "/";
  static const kStartView = "/start_view";
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: SplashViewBody.id,
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: StartView.id,
        path: kStartView,
        builder: (context, state) => const StartView(),
      ),
    ],
  );
}
