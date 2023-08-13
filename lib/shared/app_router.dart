import 'package:bookly_app/screens/search_screen/search_screen.dart';
import 'package:bookly_app/screens/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../screens/book_details_screen/book_details_screen.dart';
import '../screens/home_screen/home_screen.dart';

abstract class AppRouter{
  static const kHomeScreen='/HomeScreen';
  static const kSearchScreen='/SearchScreen';
  static const kBookDetailsScreen='/BookDetailsScreen';
  static final GoRouter router = GoRouter(
    routes:[
      GoRoute(
      path: '/',
        builder: (context,state) {
          return const SplashScreen();
        },

       ),
      GoRoute(
        path: kHomeScreen,
        builder: (context,state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path:kBookDetailsScreen ,
        builder: (context,state) {
          return const BookDetailsScreen();
        },
      ),
      GoRoute(
        path:kSearchScreen ,
        builder: (context,state) {
          return const SearchScreen();
        },
      ),

      ],
    );
}