import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepoImp.dart';
import 'package:bookly_app/core/Services/ApisServices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<Apisservices>(Apisservices(getIt.get<Dio>()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImp(getIt.get<Apisservices>()));
}
