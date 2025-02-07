import 'package:bookly_app/Features/Home/Data/Repository/HomeRepo.dart';
import 'package:bookly_app/Features/Home/Data/Repository/HomeRepoImp.dart';
import 'package:bookly_app/core/utils/ApisServices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setUp()
{
   getIt.registerSingleton<Apisservices>(Apisservices(Dio()));
   getIt.registerSingleton<HomeRepo>(HomeRepoImp(getIt.get<Apisservices>()));
  
}