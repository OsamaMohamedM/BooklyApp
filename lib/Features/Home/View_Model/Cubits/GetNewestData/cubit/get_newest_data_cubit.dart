import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
part 'get_newest_data_state.dart';

class GetNewestDataCubit extends Cubit<GetNewestDataState> {
  HomeRepo homeRepo;
  GetNewestDataCubit(this.homeRepo) : super(GetNewestDataInitial());

  Future<void> getNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold((Failrue) => emit(GetNewestDataFaliure(Failrue.message)),
        (Books) => emit(GetNewestDataSuccess(Books)));
  }
}
