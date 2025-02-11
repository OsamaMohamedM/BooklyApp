import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/core/errors/Faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks();
}
