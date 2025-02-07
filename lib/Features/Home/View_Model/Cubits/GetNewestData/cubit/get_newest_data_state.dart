part of 'get_newest_data_cubit.dart';

abstract class GetNewestDataState {}

final class GetNewestDataInitial extends GetNewestDataState {}

final class GetNewestDataSuccess extends GetNewestDataState {
  List<BookModel> Books;
  GetNewestDataSuccess(this.Books);
}

final class GetNewestDataLoding extends GetNewestDataState {}

final class GetNewestDataFaliure extends GetNewestDataState {
  String message;
  GetNewestDataFaliure(this.message);
}
