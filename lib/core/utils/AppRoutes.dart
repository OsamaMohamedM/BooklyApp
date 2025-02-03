import 'package:bookly_app/Features/Home/Presentation/views/BookDetailsView.dart';
import 'package:bookly_app/Features/Home/Presentation/views/Home.dart';
import 'package:bookly_app/Features/SplashScreen/presentation/views/SplashScreen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String homeScreen = '/Home';
  static const String splashScreen = '/';
  static const String bookDetails = '/BookDetails';
  static final router = GoRouter(routes: [
    GoRoute(
        path: splashScreen, builder: (context, state) => const SplashScreen()),
    GoRoute(path: homeScreen, builder: (context, state) => const Home()),
    GoRoute(
        path: bookDetails,
        builder: (context, state) => const BookDetailsView()),
  ]);
}
