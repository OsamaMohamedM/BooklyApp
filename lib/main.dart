
import 'package:bookly_app/core/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utils/Colors.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp.router (
      routerConfig: Approutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith( 
        scaffoldBackgroundColor: MyColors.scaffoldBackGround,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ) ,
    );
  }
}