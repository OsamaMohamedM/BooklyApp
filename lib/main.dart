import 'package:bookly_app/Features/Home/Data/Repository/HomeRepoImp.dart';
import 'package:bookly_app/Features/Home/View_Model/Cubits/GetALLData/cubit/get_all_data_cubit.dart';
import 'package:bookly_app/Features/Home/View_Model/Cubits/GetNewestData/cubit/get_newest_data_cubit.dart';
import 'package:bookly_app/core/Services/CreationService.dart';
import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/Colors.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => GetFeaturedCubit(getIt.get<HomeRepoImp>())),
        BlocProvider(
            create: (context) => GetNewestDataCubit(getIt.get<HomeRepoImp>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: MyColors.scaffoldBackGround,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
