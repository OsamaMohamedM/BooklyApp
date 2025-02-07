import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/core/errors/Faliure.dart';
import 'package:dartz/dartz.dart';

class Homerepoimp extends HomeRepo{
  @override
  Future<Either<Faliure, List<BookModel>>> fetchBestSallerBook() {
    
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBook() {
    
  }
  
}