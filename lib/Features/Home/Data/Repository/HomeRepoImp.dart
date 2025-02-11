import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/core/Services/ApisServices.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/Faliure.dart';
import '../../../../core/errors/FaliureException.dart';
import '../../../../core/errors/ServerFaliure.dart';
class HomeRepoImp extends HomeRepo {
  final Apisservices apiService;

  HomeRepoImp(this.apiService);

  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() async {
    return _fetchBooks(
        'volumes?Filtering=free-ebook&Sorting=newest&q=subject:Programming');
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() async {
    return _fetchBooks('volumes?Filtering=free-ebook&q=subject:Programming');
  }

  Future<Either<Faliure, List<BookModel>>> _fetchBooks(String endpoint) async {
    try {
      var response = await apiService.get(endpoint);
      List<BookModel> books = (response['items'] as List<dynamic>)
          .map((item) => BookModel.fromJson(item))
          .toList();
      return right(books);
    } on DioException catch (e) {
      return left(ServerFaliure.DioException(e));
    } catch (e) {
      return left(FaliureException('Something went wrong. Please try again.!'));
    }
  }
}
