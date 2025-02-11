import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/Features/Home/View_Model/Cubits/GetALLData/cubit/get_all_data_state.dart';

class GetFeaturedCubit extends Cubit<GetFeaturedState> {
  HomeRepo homeRepo;
  GetFeaturedCubit(this.homeRepo) : super(GetFeaturedInitial());

  Future<void> getAllData() async {
    emit(GetFeaturedLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((Faliure) => emit(GetFeaturedFailure(Faliure.message)),
        (books) => emit(GetFeaturedSuccess(books)));
  }
}
