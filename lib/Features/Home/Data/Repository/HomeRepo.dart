import 'package:bookly_app/core/errors/Faliure.dart';
import 'package:dartz/dartz.dart';

import '../Models/BookModel/BookModel.dart';

abstract class HomeRepo {
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks();
}
