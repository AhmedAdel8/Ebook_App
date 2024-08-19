// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:ebook_app/Features/Home/presentation/views/Home_View.dart';
import 'package:ebook_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, State) => const splashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, State) => const HomeView(),
      ),
    ],
  );
}
