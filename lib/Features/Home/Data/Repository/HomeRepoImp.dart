import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/core/errors/Faliure.dart';
import 'package:bookly_app/core/utils/ApisServices.dart';
import 'package:dartz/dartz.dart';

class Homerepoimp extends HomeRepo {
  final Apisservices apisservices = Apisservices();
  @override
  Future<Either<Faliure, List<BookModel>>> fetchNewestBooks() async {
    try{
      
    var response = await apisservices.get(
        'volumes?Filtering=free-ebook&Sorting=newest &q=subject:Programming');
    List<BookModel> books = (response['items'] as List<dynamic>)
        .map((item) => BookModel.fromJson(item))
        .toList();
    return right(books);
  }catch(e)
  {

  }
  }

  @override
  Future<Either<Faliure, List<BookModel>>> fetchFeaturedBooks() {}
}
