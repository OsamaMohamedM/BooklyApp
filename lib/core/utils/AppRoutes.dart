import 'package:bookly_app/Features/Home/Presentation/views/Home.dart';
import 'package:bookly_app/Features/SplashScreen/presentation/views/SplashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class Approutes {
  static final  router = GoRouter(
    routes: [
      GoRoute(
        path: '/' , 
        builder: (context , state)=>const SplashScreen()
        ),
      GoRoute(
        path: 'Home' , 
        builder: (context , state)=>const Home()
        ),
  ]);
}