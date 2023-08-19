import 'package:bookly_app/screens/splash_screen/splash_screen.dart';
import 'package:bookly_app/shared/utils/app_router.dart';
import 'package:bookly_app/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().
              copyWith(scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
          ThemeData.dark().textTheme
        ),
      ),

    );
  }
}
