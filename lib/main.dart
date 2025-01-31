import 'package:bookly_app/Features/SplashScreen/presentation/Constants/Colors.dart';
import 'package:bookly_app/Features/SplashScreen/presentation/views/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({ super.key });

  @override
  Widget build(BuildContext context){
    return GetMaterialApp (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MyColors.scaffoldBackGround
      ) ,
      home : const SplashScreen()
    );
  }
}