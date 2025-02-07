import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_all_data_state.dart';

class GetAllDataCubit extends Cubit<GetAllDataState> {
  GetAllDataCubit() : super(GetAllDataInitial());
}
