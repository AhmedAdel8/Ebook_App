// ignore_for_file: unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:ebook_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:ebook_app/Features/Home/data/repos/home_repo.dart';
import 'package:ebook_app/core/errors/failures.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(
          FeaturedBooksFailure(failure.errMessage),
        );
      },
      (books) {
        emit(
          FeaturedBooksSuccess(books),
        );
      },
    );
  }
}
