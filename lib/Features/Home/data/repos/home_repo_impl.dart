import 'package:dartz/dartz.dart';
import 'package:ebook_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:ebook_app/Features/Home/data/repos/home_repo.dart';
import 'package:ebook_app/core/errors/failures.dart';
import 'package:ebook_app/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free_ebooks&Sorting=newest &q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
