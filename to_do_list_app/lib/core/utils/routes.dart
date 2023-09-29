import 'package:go_router/go_router.dart';
import 'package:to_do_list_app/features/splash/presentation/views/splash_view.dart';
import 'package:to_do_list_app/features/splash/presentation/views/widgets/splash_view_body.dart';

abstract class AppRoute {
  static const kSplashView = "/";
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: SplashViewBody.id,
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
