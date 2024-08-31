// ignore_for_file: unused_field, non_constant_identifier_names

import 'package:ebook_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:ebook_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:ebook_app/Features/Home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:ebook_app/Features/Home/presentation/views/Home_View.dart';
import 'package:ebook_app/Features/Home/presentation/views/book_details_view.dart';
import 'package:ebook_app/Features/Search/presentation/views/Search_View.dart';
import 'package:ebook_app/Features/splash/presentation/views/splash_view.dart';
import 'package:ebook_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSearchView = '/searchView';

  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, State) => const splashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, State) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, State) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, State) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: State.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
