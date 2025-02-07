import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_newest_data_state.dart';

class GetNewestDataCubit extends Cubit<GetNewestDataState> {
  GetNewestDataCubit() : super(GetNewestDataInitial());
}
