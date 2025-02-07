import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Models/BookModel/BookModel.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';

part 'get_all_data_state.dart';

class GetFeaturedCubit extends Cubit<GetFeaturedState> {
  HomeRepo homeRepo;
  GetFeaturedCubit(this.homeRepo) : super(GetFeaturedInitial());

  Future<void> getAllData() async {
    emit(GetFeaturedLoding());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((Faliure) => emit(Faliure.message),
        (books) => emit(GetFeaturedSuccess(books)));
  }
}
