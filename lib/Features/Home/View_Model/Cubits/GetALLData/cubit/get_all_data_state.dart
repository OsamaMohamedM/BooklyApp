part of 'get_all_data_cubit.dart';

abstract class GetFeaturedState {}

class GetFeaturedInitial extends GetFeaturedState {}

class GetFeaturedSuccess extends GetFeaturedState {
  List<BookModel> books;
  GetFeaturedSuccess(this.books);
}

class GetFeaturedFaliure extends GetFeaturedState {
  String errorMessage;
  GetFeaturedFaliure(this.errorMessage);
}

class GetFeaturedLoding extends GetFeaturedState {}
