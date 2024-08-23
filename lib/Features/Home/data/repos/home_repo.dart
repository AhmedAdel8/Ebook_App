import 'package:dartz/dartz.dart';
import 'package:ebook_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:ebook_app/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either< Failure,List<BookModel>>> fetchNewsetBooks(); //method
   Future<Either< Failure,List<BookModel>>>fetchFeaturedBooks();
}
